import 'package:final_year_project/Screens/Add_Projects/AddMember3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'AddMember2.dart';

class AddProjectsScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Member 2 (Optional)'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 40,right: 40,top: 50),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'Name'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Father Name'),
                ),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(labelText: 'Degree'),
                  items: ['BS', 'MS', 'PhD'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? value) {},
                ),
                DropdownButtonFormField<int>(
                  decoration: InputDecoration(labelText: 'Semester'),
                  items: List.generate(8, (index) => index + 1)
                      .map((int value) {
                    return DropdownMenuItem<int>(
                      value: value,
                      child: Text(value.toString()),
                    );
                  }).toList(),
                  onChanged: (int? value) {},
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Roll No'),
                ),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(labelText: 'Shift'),
                  items: ['Morning', 'Evening'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? value) {},
                ),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(labelText: 'Gender'),
                  items: ['Male', 'Female', 'Custom'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? value) {},
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Date'),
                  // Add a DatePicker or DateTimePicker widget here
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: false,
                      onChanged: (bool? value) {},
                    ),
                    Text('I agree to the terms and conditions'),
                  ],
                ),
                SizedBox(height: 20.0), // Spacer
                Container(
                  width: 300,
                  height: 55,
                  color: Colors.blue,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AddProjectsScreen3()));
                    },
                    child: Text('Add 2nd Member',style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, // Set the button color to blue
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

