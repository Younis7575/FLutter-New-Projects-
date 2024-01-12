import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:final_year_project/Screens/Main_Home_Screen/Supervisors/FYP_Supervisors/sup10.dart';
import 'package:final_year_project/Screens/Main_Home_Screen/Supervisors/FYP_Supervisors/sup11.dart';
import 'package:final_year_project/Screens/Main_Home_Screen/Supervisors/FYP_Supervisors/sup12.dart';
import 'package:final_year_project/Screens/Main_Home_Screen/Supervisors/FYP_Supervisors/sup2.dart';
import 'package:final_year_project/Screens/Main_Home_Screen/Supervisors/FYP_Supervisors/sup3.dart';
import 'package:final_year_project/Screens/Main_Home_Screen/Supervisors/FYP_Supervisors/sup4.dart';
import 'package:final_year_project/Screens/Main_Home_Screen/Supervisors/FYP_Supervisors/sup5.dart';
import 'package:final_year_project/Screens/Main_Home_Screen/Supervisors/FYP_Supervisors/sup6.dart';
import 'package:final_year_project/Screens/Main_Home_Screen/Supervisors/FYP_Supervisors/sup7.dart';
import 'package:final_year_project/Screens/Main_Home_Screen/Supervisors/FYP_Supervisors/sup8.dart';
import 'package:final_year_project/Screens/Main_Home_Screen/Supervisors/FYP_Supervisors/sup9.dart';
import 'package:flutter/material.dart';

import 'SupervisorScreens.dart';

class Suoervisor_List extends StatelessWidget {
  const Suoervisor_List({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: const Color(0xFF21262d),
        body: SizedBox.expand(
          child: Stack(
            // alignment: Alignment.center,
            children: [
              const Positioned(
                top: 200,
                left: 10,
                child: GradientBall(
                  colors: [
                    Colors.deepOrange,
                    Colors.amber,
                  ],
                ),
              ),
              const Positioned(
                top: 400,
                right: 10,
                child: GradientBall(
                  size: Size.square(200),
                  colors: [Colors.blue, Colors.purple],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Supervisor1()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 70,left: 16,right: 16),
                        child: BlurryContainer(
                          color: Colors.blue,
                          blur: 8,
                          elevation: 6,
                          height: 200,
                          padding: const EdgeInsets.all(32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: NetworkImage(
                                        'https://www.uaar.edu.pk/media/profile/yasir-151122-1.jpeg'),
                                  ),
                                  Text('SM Engineering\nR_Prioritization\nCBS Using A.I',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              const Spacer(),
                              const Text(
                                "Prof.Dr.Yaser Hafeez",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    "yasir@uaar.edu.pk".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      // fontSize: 16,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                  const Spacer(),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Supervisor2()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
                        child: BlurryContainer(
                          color: Colors.blue,
                          blur: 8,
                          elevation: 6,
                          height: 200,
                          padding: const EdgeInsets.all(32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: NetworkImage(
                                        'https://www.uaar.edu.pk/media/profile/saif-26-07-19.jpg'),
                                  ),
                                  Text('Artificial Intelligence\nMachine Learning\nData Mining',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              const Spacer(),
                              const Text(
                                "Dr.Saif Ur Rehman ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    "Saif@uaar.edu.pk".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      // fontSize: 16,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                  const Spacer(),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Supervisor3()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
                        child: BlurryContainer(
                          color: Colors.blue,
                          blur: 8,
                          elevation: 6,
                          height: 200,
                          padding: const EdgeInsets.all(32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: NetworkImage(
                                        'https://www.uaar.edu.pk/media/profile/rubina-300922.JPG'),
                                  ),
                                  Text('Cyber Security\nMachine Learning\nDistributed Computing',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              const Spacer(),
                              const Text(
                                "Dr. Rubina Ghazal",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    "rubinaghazal@uaar.edu.pk".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      // fontSize: 16,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                  const Spacer(),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Supervisor4()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
                        child: BlurryContainer(
                          color: Colors.blue,
                          blur: 8,
                          elevation: 6,
                          height: 200,
                          padding: const EdgeInsets.all(32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: NetworkImage(
                                        'https://www.uaar.edu.pk/media/profile/X1z4AkT.jpg'),
                                  ),
                                  Text('Semantics Programming\nData Structures ',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              const Spacer(),
                              const Text(
                                "Dr. Saqib Majeed",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    "saqib@uaar.edu.pk".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      // fontSize: 16,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                  const Spacer(),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Supervisor5()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
                        child: BlurryContainer(
                          color: Colors.blue,
                          blur: 8,
                          elevation: 6,
                          height: 200,
                          padding: const EdgeInsets.all(32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: NetworkImage(
                                        'https://www.uaar.edu.pk/media/profile/MuhammadAqib-29-11-19.jpg'),
                                  ),
                                  Text('Deep Learning\nBig Data\nIn-Memory Computing',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              const Spacer(),
                              const Text(
                                "Dr. Muhammad Aqib",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    "aqib.qazi@uaar.edu.pk".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      // fontSize: 16,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                  const Spacer(),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Supervisor6()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
                        child: BlurryContainer(
                          color: Colors.blue,
                          blur: 8,
                          elevation: 6,
                          height: 200,
                          padding: const EdgeInsets.all(32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: NetworkImage(
                                        'https://www.uaar.edu.pk/media/profile/kashif-uiit.png'),
                                  ),
                                  Text('IoT Networks\nData Structures\nAlgorithm Analysis, ',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              const Spacer(),
                              const Text(
                                "Dr. Kashif Sattar",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    " kashif@uaar.edu.pk".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      // fontSize: 16,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                  const Spacer(),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Supervisor7()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
                        child: BlurryContainer(
                          color: Colors.blue,
                          blur: 8,
                          elevation: 6,
                          height: 200,
                          padding: const EdgeInsets.all(32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: NetworkImage(
                                        'https://www.uaar.edu.pk/media/profile/tariq-10072020.jpg'),
                                  ),
                                  Text('Machine Learning\nSemantic Computing\nDatabases',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              const Spacer(),
                              const Text(
                                "Dr. Tariq Ali ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    "tariq.ali@uaar.edu.pk".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      // fontSize: 16,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                  const Spacer(),
                                  const SizedBox(width: 4),
                                  Text(
                                    "Website",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Supervisor8()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
                        child: BlurryContainer(
                          color: Colors.blue,
                          blur: 8,
                          elevation: 6,
                          height: 200,
                          padding: const EdgeInsets.all(32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: NetworkImage(
                                        'https://www.uaar.edu.pk/media/profile/asifuiit.jpg'),
                                  ),
                                  Text('SM_Analysis\nNL_Processing\nPrediction',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              const Spacer(),
                              const Text(
                                "Dr. Asif Nawaz",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    "asif.nawaz@uaar.edu.pk".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      // fontSize: 16,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                  const Spacer(),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Supervisor9()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
                        child: BlurryContainer(
                          color: Colors.blue,
                          blur: 8,
                          elevation: 6,
                          height: 200,
                          padding: const EdgeInsets.all(32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: NetworkImage(
                                        'https://www.uaar.edu.pk/media/profile/GM-10072020.jpg'),
                                  ),
                                  Text('Artificial Intelligence\nKnowledge Modelling',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              const Spacer(),
                              const Text(
                                "Dr. Ghulam Mustafa",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    "gmustafa@uaar.edu.pk".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      // fontSize: 16,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                  const Spacer(),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Supervisor10()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
                        child: BlurryContainer(
                          color: Colors.blue,
                          blur: 8,
                          elevation: 6,
                          height: 200,
                          padding: const EdgeInsets.all(32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: NetworkImage(
                                        'https://www.uaar.edu.pk/media/profile/mariam-070922.jpg'),
                                  ),
                                  Text('Cloud Computing\nCybersecurity\nMachine Learning',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              const Spacer(),
                              const Text(
                                "Dr. Syeda Mariam Muzammal",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    "mariammuzammal@uaar.edu.pk".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      // fontSize: 16,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                  const Spacer(),

                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Supervisor11()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
                        child: BlurryContainer(
                          color: Colors.blue,
                          blur: 8,
                          elevation: 6,
                          height: 200,
                          padding: const EdgeInsets.all(32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: NetworkImage(
                                        'https://www.uaar.edu.pk/media/profile/sadia-201222.jpg'),
                                  ),
                                  Text('Software Engineering\nCB_Systems\nData Mining',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              const Spacer(),
                              const Text(
                                "Dr. Sadia Ali",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    "sadiaali@uaar.edu.pk".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      // fontSize: 16,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                  const Spacer(),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Supervisor12()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
                        child: BlurryContainer(
                          color: Colors.blue,
                          blur: 8,
                          elevation: 6,
                          height: 200,
                          padding: const EdgeInsets.all(32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: NetworkImage(
                                        'https://www.uaar.edu.pk/media/profile/habib-070922.jpg'),
                                  ),
                                  Text('Image Processing\nImage De-noising\nMachine Learning',style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              const Spacer(),
                              const Text(
                                "Dr. Muhammad Habib",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    "muhammad.habib@uaar.edu.pk".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      // fontSize: 16,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                  const Spacer(),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
            SizedBox(height: 100,),

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

class GradientBall extends StatelessWidget {
  final List<Color> colors;
  final Size size;
  const GradientBall({
    Key? key,
    required this.colors,
    this.size = const Size.square(150),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: colors,
        ),
      ),
    );
  }
}
