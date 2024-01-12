import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:final_year_project/Widgets/CustomSUpContainer.dart';
import 'package:get/get.dart';

class Supervisor1 extends StatefulWidget {
  const Supervisor1({Key? key}) : super(key: key);

  @override
  _Supervisor1State createState() => _Supervisor1State();
}

class _Supervisor1State extends State<Supervisor1> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CustomTabBarScreen(
              imageUrl: 'https://www.uaar.edu.pk/media/profile/yasir-151122-1.jpeg',
              name: 'Prof.Dr.Yaser Hafeez',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentForm1()));
              },

            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10.0),
            ), // Remove the color property here, as it will be set dynamically
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.blue, // Set the color for selected tabs
              unselectedLabelColor: Colors.grey[700], // Set the color for unselected tabs
              tabs: [
                Tab(text: 'Complete'),
                Tab(text: 'Ongoing'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(
                  child: Center(
                    child: Text('Complete Tab Content'),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text('Ongoing Tab Content'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}







class StudentForm1 extends StatefulWidget {
  @override
  _StudentForm1State createState() => _StudentForm1State();
}

class _StudentForm1State extends State<StudentForm1> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController introductionController = TextEditingController();
  final TextEditingController featuresController = TextEditingController();
  final TextEditingController modelsController = TextEditingController();
  final TextEditingController toolsController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool showToolsAndTechFields = false;


  Future<void> _sendForm() async {
    try {
      if (titleController.text.isEmpty ||
          introductionController.text.isEmpty ||
          featuresController.text.isEmpty ||
          modelsController.text.isEmpty ||
          toolsController.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Please fill in all fields')),
        );
        return;
      }

      User? user = _auth.currentUser;
      if (user != null) {
        await FirebaseFirestore.instance.collection('forms').add({
          'userId': user.uid,
          'title': titleController.text,
          'introduction': introductionController.text,
          'features': featuresController.text,
          'models': modelsController.text,
          'tools': toolsController.text,
          'status': 'pending', // initial status
        });

        titleController.clear();
        introductionController.clear();
        featuresController.clear();
        modelsController.clear();
        toolsController.clear();
        setState(() {
          showToolsAndTechFields = false;
        });

        // Show the "Successfully Sent" dialog
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Successfully Sent'),
              content: Text('Your proposal has been sent successfully!'),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    } catch (e) {
      print('Error sending form: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student Proposal')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                  labelText: 'Title',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
              SizedBox(height: 16,),
              TextField(
                controller: introductionController,
                decoration: InputDecoration(
                  labelText: 'Introduction',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
                maxLines: 10,
                minLines: 5,
              ),
              SizedBox(height: 16,),
              TextField(
                controller: featuresController,
                decoration: InputDecoration(
                  labelText: 'Features',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
                maxLines: 10,
                minLines: 5,
              ),
              SizedBox(height: 16,),
              TextField(
                controller: modelsController,
                decoration: InputDecoration(
                  labelText: 'Models',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
                maxLines: 10,
                minLines: 5,
              ),
              SizedBox(height: 16,),
              if (showToolsAndTechFields)
                Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Tool 1',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Tool 2',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Tool 3',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Technology 1',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Technology 2',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Technology 3',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Technology 4',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Technology 5',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              TextField(
                controller: toolsController,
                decoration: InputDecoration(
                  labelText: 'Tools & Technology',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
                onTap: () {
                  setState(() {
                    showToolsAndTechFields = true;
                  });
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: _sendForm,
                child: Container(
                  width: 300,
                  height: 55,
                  child: Center(
                    child: Text('Send',style: TextStyle(color: Colors.white),),
                  ),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

