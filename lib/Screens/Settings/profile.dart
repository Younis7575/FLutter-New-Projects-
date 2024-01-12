import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// Ensure correct import for File based on platform
// import 'dart:html'; // For web
import 'dart:io'; // For mobile

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String displayName = "";
  String degree = "";
  String regNo = "";
  String cnic = "";
  XFile? _pickedImage;

  void _pickImage() async {
    final _picker = ImagePicker();
    final pickedImage = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _pickedImage = pickedImage;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              _pickedImage != null
                  ? CircleAvatar(
                      radius: 60,
                      backgroundImage: FileImage(File(_pickedImage!.path)),
                    )
                  : CircleAvatar(
                      radius: 60,
                      child: Icon(Icons.person),
                    ),
              TextButton(
                onPressed: _pickImage,
                child: Icon(Icons.add),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: 'Display Name'),
                      onChanged: (value) => displayName = value,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Degree'),
                      onChanged: (value) => degree = value,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Reg No'),
                      onChanged: (value) => regNo = value,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'CNIC'),
                      onChanged: (value) => cnic = value,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: 300,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle update logic here
                          // Example:
                          print('Updating profile with:'
                              '\nDisplay Name: $displayName'
                              '\nDegree: $degree'
                              '\nReg No: $regNo'
                              '\nCNIC: $cnic');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue, // Set the button color to blue
                        ),
                        child: Text('Update',style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
