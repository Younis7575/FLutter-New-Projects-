import 'package:flutter/material.dart';
import 'AddMember1.dart';
import 'FYP_Reg_Form.dart';
import 'ProjectSubmitOverview.dart';



class AddProjectsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 200,
                child: Image.asset(
                  'assets/images/addproject.png',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: 200,
                height: 60,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FYP_Reg_Form()),
                    );
                  },
                  icon: Icon(Icons.add,color: Colors.white,),
                  label: Text("Add New Project",style: TextStyle(color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue, // Set the button color to blue
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

