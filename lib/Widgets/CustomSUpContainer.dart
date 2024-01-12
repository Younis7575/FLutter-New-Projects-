import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

class CustomTabBarScreen extends StatefulWidget {
  const CustomTabBarScreen(
      {Key? key, required this.imageUrl, required this.name, required this.onPressed,})
      : super(key: key);

  final String imageUrl;
  final String name;
  final VoidCallback onPressed;

  @override
  State<CustomTabBarScreen> createState() => _CustomTabBarScreenState();
}

class _CustomTabBarScreenState extends State<CustomTabBarScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70, left: 16, right: 16),
              child: BlurryContainer(
                color: Colors.blue,
                blur: 8,
                elevation: 6,
                height: 200,
                padding: const EdgeInsets.all(32),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image
                    Image.network(
                      widget.imageUrl,
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 16), // Adjust spacing between image and text
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.name,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 34,),
                          Container(
                            width: 200,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: widget.onPressed,
                              child: Text('Choose'),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue,
                                onPrimary: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
