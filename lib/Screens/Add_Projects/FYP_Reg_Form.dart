import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:raised_buttons/raised_buttons.dart';

class FYP_Reg_Form extends StatefulWidget {
  @override
  _FYP_Reg_FormState createState() => _FYP_Reg_FormState();
}

class _FYP_Reg_FormState extends State<FYP_Reg_Form> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController introductionController = TextEditingController();
  final TextEditingController featuresController = TextEditingController();
  final TextEditingController modelsController = TextEditingController();
  final TextEditingController toolsController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;


  late String TitleName;
  late String ProjectDescription;
  late String WebAppdesktop;
  late String Features;


  getTitleName(name){this.TitleName=name;}
  getProjectDescription(description){this.ProjectDescription=description;}
  getWebAppdesktop(webAppdesktop){this.WebAppdesktop=webAppdesktop;}
  getFeatures(feature){this.Features=feature;}


  late String FirstReg;
  late String FirstName;
  late String FirstDegreeProgram;
  late String FirstContact;
  late String FirstEmail;

  getFirstReg(firstReg) {this.FirstReg=firstReg;}
  getFirstName(firstName){this.FirstName=firstName;}
  getFirstDegreeProgram(firstDegreeProgram){this.FirstDegreeProgram=firstDegreeProgram;}
  getFirstContact(firstContact){this.FirstContact=firstContact;}
  getFirstEmail(firstemail){this.FirstEmail=firstemail;}





  late String SecondReg;
  late String SecondName;
  late String SecondDegreeProgram;
  late String SecondContact;
  late String SecondEmail;

  getSecondReg(secondReg) {this.SecondReg=secondReg;}
  getSecondName(secondName){this.SecondName=secondName;}
  getSecondDegreeProgram(secondDegreeProgram){this.SecondDegreeProgram=secondDegreeProgram;}
  getSecondContact(secondContact){this.SecondContact=secondContact;}
  getSecondEmail(secondemail){this.SecondEmail=secondemail;}




  late String ThirdReg;
  late String ThirdName;
  late String ThirdDegreeProgram;
  late String ThirdContact;
  late String ThirdEmail;

  getThirdReg(thirdReg) {this.ThirdReg=thirdReg;}
  getThirdName(thirdName){this.ThirdName=thirdName;}
  getThirdDegreeProgram(thirdDegreeProgram){this.ThirdDegreeProgram=thirdDegreeProgram;}
  getThirdContact(thirdContact){this.ThirdContact=thirdContact;}
  getThirdEmail(thirdemail){this.ThirdEmail=thirdemail;}


  late String Supervisor;
  getSupervisor(supervisor){this.Supervisor=supervisor;}


  sendData()
  {
    print("Data Send ");
  }
  updateData(){print("Updated Data");}
  readData(){print("Read Data");}
  deleteData(){print("Delete Data");}




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
      appBar: AppBar(title: Text('Student Reg_Form')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              Text('Member 1 Data',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Reg No",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
                onChanged: (String firstReg)
                {
                  getFirstReg(firstReg);
                },
              ),
              SizedBox(height: 5,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
                onChanged: (firstName)
                {
                  getFirstName(firstName);
                },
              ),
              SizedBox(height: 5,),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Degree Program",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
                onChanged: (String firstdegreeProgram)
                {
                  getFirstDegreeProgram(firstdegreeProgram);
                },
              ),
              SizedBox(height: 5,),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Contact",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
                onChanged: (firstContact)
                {
                  getFirstContact(firstContact);
                },
              ),
              SizedBox(height: 5,),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Email Address",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
                onChanged: (firstemail)
                {
                  getFirstEmail(firstemail);
                },
              ),
              SizedBox(height: 10,),
              Text('Member 2 Data',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Reg No",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
                onChanged: (String secondReg)
                {
                  getSecondReg(secondReg);
                },
              ),
              SizedBox(height: 5,),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
                onChanged: (secondName)
                {
                  getSecondName(secondName);
                },
              ),
              SizedBox(height: 5,),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Degree Program",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
                onChanged: (String seconddegreeProgram)
                {
                  getSecondDegreeProgram(seconddegreeProgram);
                },
              ),
              SizedBox(height: 5,),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Contact",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
                onChanged: (secondContact)
                {
                  getSecondContact(secondContact);
                },
              ),
              SizedBox(height: 5,),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Email Address",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
                onChanged: (secondemail)
                {
                  getSecondContact(secondemail);
                },
              ),
              SizedBox(height: 10,),
              Text('Member 3 Data',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Reg No",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
                onChanged: (String thirdReg)
                {
                  getThirdReg(thirdReg);
                },
              ),
              SizedBox(height: 5,),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
                onChanged: (thirdName)
                {
                  getThirdName(thirdName);
                },
              ),
              SizedBox(height: 5,),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Degree Program",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
                onChanged: (String thirddegreeProgram)
                {
                  getThirdDegreeProgram(thirddegreeProgram);
                },
              ),
              SizedBox(height: 5,),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Contact",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
                onChanged: (thirdContact)
                {
                  getThirdContact(thirdContact);
                },
              ),
              SizedBox(height: 5,),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Email Address",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
                onChanged: (thirdemail)
                {
                  getThirdContact(thirdemail);
                },
              ),
              SizedBox(height: 10,),
              Text('Supervisor Name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Supervisor",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
                onChanged: (String supervisor)
                {
                  getSupervisor(supervisor);
                },
              ),
              SizedBox(height: 50,),
              Text('Fill All Fields Carefully',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(height: 15,),
              TextFormField(
                controller: titleController,
                decoration: InputDecoration(
                  labelText: 'Title',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onChanged: (String title) {
                  getTitleName(title);
                },
              ),
              SizedBox(height: 16,),
              TextFormField(
                controller: introductionController,
                decoration: InputDecoration(
                  labelText: 'Project Description',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                maxLines: 50,
                minLines: 30,
                onChanged: (String description) {
                  getProjectDescription(description);
                },
              ),
              SizedBox(height: 16,),
              TextFormField(
                controller: featuresController,
                decoration: InputDecoration(
                  labelText: 'Web/App/desktop',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onChanged: (String webAppdesktop) {
                  getWebAppdesktop(webAppdesktop);
                },
              ),
              SizedBox(height: 16,),
              TextFormField(
                controller: modelsController,
                decoration: InputDecoration(
                  labelText: 'Silent Features',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                maxLines: 50,
                minLines: 30,
                onChanged: (String features) {
                  getFeatures(features);
                },
              ),
              // SizedBox(height: 16,),
              // if (showToolsAndTechFields)
              //   Column(
              //     children: [
              //       TextFormField(
              //         decoration: InputDecoration(
              //           labelText: 'Tool 1',
              //           border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              //         ),
              //         onChanged:(String title) {},
              //       ),
              //       SizedBox(height: 10,),
              //       TextFormField(
              //         decoration: InputDecoration(
              //           labelText: 'Tool 2',
              //           border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              //         ),
              //         onChanged:(String title) {},
              //       ),
              //       SizedBox(height: 10,),
              //       TextFormField(
              //         decoration: InputDecoration(
              //           labelText: 'Tool 3',
              //           border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              //         ),
              //         onChanged:(String title) {},
              //       ),
              //       SizedBox(height: 10,),
              //       TextFormField(
              //         decoration: InputDecoration(
              //           labelText: 'Technology 1',
              //           border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              //         ),
              //         onChanged:(String title) {},
              //       ),
              //       SizedBox(height: 10,),
              //       TextFormField(
              //         decoration: InputDecoration(
              //           labelText: 'Technology 2',
              //           border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              //         ),
              //         onChanged:(String title) {},
              //       ),
              //       SizedBox(height: 10,),
              //       TextFormField(
              //         decoration: InputDecoration(
              //           labelText: 'Technology 3',
              //           border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              //         ),
              //         onChanged:(String title) {},
              //       ),
              //       SizedBox(height: 10,),
              //       TextFormField(
              //         decoration: InputDecoration(
              //           labelText: 'Technology 4',
              //           border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              //         ),
              //         onChanged:(String title) {},
              //       ),
              //       SizedBox(height: 10,),
              //       TextFormField(
              //         decoration: InputDecoration(
              //           labelText: 'Technology 5',
              //           border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              //         ),
              //         onChanged:(String title) {},
              //       ),
              //       SizedBox(height: 10,),
              //     ],
              //   ),
              // TextFormField(
              //   controller: toolsController,
              //   decoration: InputDecoration(
              //     labelText: 'Tools & Technology',
              //     border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              //   ),
              //   onTap: () {
              //     setState(() {
              //       showToolsAndTechFields = true;
              //     });
              //   },
              // ),
              SizedBox(height: 16),
              // ElevatedButton(
              //   onPressed: _sendForm,
              //   child: Container(
              //     width: 300,
              //     height: 55,
              //     child: Center(
              //       child: Text('Send', style: TextStyle(color: Colors.white),),
              //     ),
              //   ),
              //   style: ElevatedButton.styleFrom(primary: Colors.blue),
              // ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.blue,
                            ),
                            child: ElevatedButton(
                              onPressed: ()
                              {
                                sendData();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                shadowColor: Colors.transparent,
                              ),
                              child: Text(
                                "Send",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.yellow,
                            ),
                            child: ElevatedButton(
                              onPressed: ()
                              {
                                updateData();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                shadowColor: Colors.transparent,
                              ),
                              child: Text(
                                "Update",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.lightGreenAccent,
                            ),
                            child: ElevatedButton(
                              onPressed: ()
                              {
                                readData();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                shadowColor: Colors.transparent,
                              ),
                              child: Text(
                                "Read",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.red,
                            ),
                            child: ElevatedButton(
                              onPressed: ()
                              {
                                deleteData();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                shadowColor: Colors.transparent,
                              ),
                              child: Text(
                                "Delete",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(width: 50),
                        ],
                      ),
                    ),
                  ),
                ],
              ),


              SizedBox(height: 50),
              Text('INSTRUCTIONS FOR STUDENTS',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Text('1. Project Title and Description should be filled by the supervisor and students. \n2. This form should be filled electronically and submitted in print form. \n3. Submit duly filled form to FYP Coordinator(s). \n4. Project once selected cannot be changed without the consent of the supervisor, FYP coordinator and permission of the Director UIIT.',
                style: TextStyle(fontSize: 16),),
              SizedBox(height: 50),


            ],
          ),
        ),
      ),
    );
  }}
