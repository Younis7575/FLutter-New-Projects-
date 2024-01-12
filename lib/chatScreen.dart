import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MessageBubble extends StatelessWidget {
  final String text;
  final bool isUser;

  const MessageBubble({required this.text, required this.isUser});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Material(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(isUser ? 30 : 0),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
              topRight: Radius.circular(isUser ? 0 : 30),
            ),
            elevation: 5,
            color: isUser ? Colors.blueGrey[100] : Colors.blueGrey[700],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text(
                text,
                style: TextStyle(
                  color: isUser ? Colors.black : Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<Message> _messages = [];
  final _textController = TextEditingController();

  Future<void> _sendMessage() async {
    String userMessage = _textController.text;
    if (userMessage.isNotEmpty) {
      // Add the user's message to the list
      _addMessage(Message(text: userMessage, isUser: true));

      // Get the response from the ChatGPT API
      String chatGptResponse = await getChatGptResponse(userMessage);

      // Add the ChatGPT response to the list
      _addMessage(Message(text: chatGptResponse, isUser: false));

      // Clear the text input field
      _textController.clear();
    }
  }

  Future<String> getChatGptResponse(String userMessage) async {
    final String apiKey = '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'; // Replace with your actual API key
    final String endpoint = 'https://api.openai.com/v1/chat/completions';

    final response = await http.post(
      Uri.parse(endpoint),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
      body: json.encode({
        'messages': [
          {'role': 'system', 'content': 'You are a helpful assistant.'},
          {'role': 'user', 'content': userMessage},
        ],
      }),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return data['choices'][0]['message']['content'];
    } else {
      throw Exception('Failed to get response from ChatGPT API');
    }
  }

  void _addMessage(Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              padding: const EdgeInsets.all(20),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                return MessageBubble(
                  text: message.text,
                  isUser: message.isUser,
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type your message...',
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: _sendMessage,
                  child: const Icon(Icons.send, color: Colors.white),
                  backgroundColor: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Message {
  final String text;
  final bool isUser;

  Message({required this.text, required this.isUser});
}
