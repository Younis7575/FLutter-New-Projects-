import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Help_SupportScreen extends StatelessWidget
{

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController descController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30,),
              // Container(
              //   width: 250,
              //   height: 50,
              //   child: Image.asset(
              //     'assets/images/darood2.png',
              //     fit: BoxFit.cover,
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: 350,
                  height: 150,
                  child: Image.asset(
                    'assets/logo_image/logo5.png',
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: 300,
                  child: Text("Make a free consultation with our expert team to solve your problem",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.blue),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              SizedBox(height: 16,),
              Container(
                width: 300,
                height: 60,
                child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                        labelText: 'Enter Your Name',
                        prefixIcon: Icon(Icons.person,color: Colors.blue,),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Colors.green)
                        )
                    )
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 300,
                height: 60,
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      labelText: "Enter Your Email",
                      prefixIcon: Icon(Icons.email_outlined,color: Colors.blue,),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                        borderRadius: BorderRadius.circular(16),
                      )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 300,
                child: TextField(
                  controller: descController,
                  maxLines: 5,
                  decoration: InputDecoration(
                      labelText: "Description",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.green),
                      )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 300,
                height: 60,
                child: ElevatedButton(
                  onPressed: ()
                  {

                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),

              SizedBox(height: 100,),
              Container(
                width: 300,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ]
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Icon(
                          Icons.location_off_outlined,
                          size: 40,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Positioned(
                      left: 10, // Adjusted left position
                      top: 45,
                      right: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Address:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          Text('PMAS AAAUR (University Insititute of Information and Technology)'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16,),
              Container(
                width: 300,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ]
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Icon(
                          Icons.phone_callback,
                          size: 40,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Positioned(
                      left: 10, // Adjusted left position
                      top: 45,
                      right: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Call For Help:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          Text('+92 333 6677575'),
                          Text('+92 334 2322324'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16,),
              Container(
                width: 300,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ]
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Icon(
                          Icons.email_outlined,
                          size: 40,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Positioned(
                      left: 10, // Adjusted left position
                      top: 45,
                      right: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Email:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          Text('info@projecthub.com'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60,),

            ],
          ),
        ),
      ),
    );
  }

}