import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../../Helpers/CardContainer.dart';
import '../../../Widgets/HomeSubContainer.dart';
import '../Supervisors/FYP_Supervisors/Suoervisor_List.dart';
import '../Supervisors/Projects/FYP_Projects.dart';
import '../Supervisors/Projects/ResearchWork.dart';
import '../Supervisors/Research_Supervisors/R_Supervisor_List.dart';
import 'Courses/CourseOutline.dart';
import 'Courses/cards.dart';

class HomeScreenWidget extends StatelessWidget {
  HomeScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: const Color(0xFF21262d),
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                  child: Text(
                "Hi Students",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              )),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35, right: 35),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.grey),
                  SizedBox(width: 8.0),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search here',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Suoervisor_List()));
                    },
                    child: BlurryContainer(
                      width: 130,
                      height: 130,
                      color: Colors.blue,
                      // color: Color(0xFF0D5EA9).withOpacity(0.80),
                      blur: 8,
                      elevation: 6,
                      padding: const EdgeInsets.all(6),
                      // borderRadius: BorderRadius.circular(10), // Optional for rounded corners
                      child: HomeCustomContainer(
                        icon: CupertinoIcons.person_alt_circle,
                        text: 'FYP Mentor',
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PastFYPProjects()));
                    },
                    child: BlurryContainer(
                      width: 130,
                      height: 130,
                      color: Colors.blue,
                      blur: 8,
                      elevation: 6,
                      padding: const EdgeInsets.all(6),
                      // borderRadius: BorderRadius.circular(10), // Optional for rounded corners
                      child: HomeCustomContainer(
                        icon: CupertinoIcons.book,
                        text: 'FYP Project',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => R_Supervisor_List()));
                    },
                    child: BlurryContainer(
                      width: 130,
                      height: 130,
                      color: Colors.blue,
                      blur: 8,
                      elevation: 6,
                      padding: const EdgeInsets.all(6),
                      // borderRadius: BorderRadius.circular(10), // Optional for rounded corners
                      child: HomeCustomContainer(
                        icon: CupertinoIcons.person_alt_circle,
                        text: 'Research Mentor',
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PastResearchWork()));
                    },
                    child: BlurryContainer(
                      width: 130,
                      height: 130,
                      color: Colors.blue,
                      blur: 8,
                      elevation: 6,
                      padding: const EdgeInsets.all(6),
                      // borderRadius: BorderRadius.circular(10), // Optional for rounded corners
                      child: HomeCustomContainer(
                        icon: CupertinoIcons.book,
                        text: 'Research Project',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 130),
                child: Text(
                  "Learn Cources",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomContainer(
                        imagePath: 'assets/icons/flutter.png',
                        onPressed: () {
                          // Navigate to the first screen
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Screen1()));
                        }),
                    CustomContainer(
                        imagePath: 'assets/icons/android.png',
                        onPressed: () {
                          // Navigate to the second screen
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Screen2()));
                        }),
                    CustomContainer(
                        imagePath: 'assets/icons/uiux3.png',
                        onPressed: () {
                          // Navigate to the third screen
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Screen3()));
                        }),
                    CustomContainer(
                        imagePath: 'assets/icons/android.png',
                        onPressed: () {
                          // Navigate to the fourth screen
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Screen4()));
                        }),
                    CustomContainer(
                        imagePath: 'assets/icons/flutter.png',
                        onPressed: () {
                          // Navigate to the fifth screen
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Screen5()));
                        }),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Text(
                  "Programming Languages",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomContainer(
                        imagePath: 'assets/icons/rust.png',
                        onPressed: () {
                          // Navigate to the first screen
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Screen1()));
                        }),
                    CustomContainer(
                        imagePath: 'assets/icons/go.png',
                        onPressed: () {
                          // Navigate to the second screen
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Screen2()));
                        }),
                    CustomContainer(
                        imagePath: 'assets/icons/js.png',
                        onPressed: () {
                          // Navigate to the third screen
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Screen3()));
                        }),
                    CustomContainer(
                        imagePath: 'assets/icons/kotlin.png',
                        onPressed: () {
                          // Navigate to the fourth screen
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Screen4()));
                        }),
                    CustomContainer(
                        imagePath: 'assets/icons/php.png',
                        onPressed: () {
                          // Navigate to the fifth screen
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Screen5()));
                        }),
                    CustomContainer(
                        imagePath: 'assets/icons/ruby.png',
                        onPressed: () {
                          // Navigate to the fifth screen
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Screen5()));
                        }),
                    CustomContainer(
                        imagePath: 'assets/icons/cc.png',
                        onPressed: () {
                          // Navigate to the fifth screen
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Screen5()));
                        }),
                    CustomContainer(
                        imagePath: 'assets/icons/swift.png',
                        onPressed: () {
                          // Navigate to the fifth screen
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Screen5()));
                        }),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(right: 130),
                child: Text(
                  "Project Preview",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomContainer(
                        imagePath: 'assets/icons/flutter.png',
                        onPressed: () {
                          // Navigate to the first screen
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Screen1()));
                        }),
                    CustomContainer(
                        imagePath: 'assets/icons/android.png',
                        onPressed: () {
                          // Navigate to the second screen
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Screen2()));
                        }),
                    CustomContainer(
                        imagePath: 'assets/icons/flutter.png',
                        onPressed: () {
                          // Navigate to the third screen
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Screen3()));
                        }),
                    CustomContainer(
                        imagePath: 'assets/icons/android.png',
                        onPressed: () {
                          // Navigate to the fourth screen
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Screen4()));
                        }),
                    CustomContainer(
                        imagePath: 'assets/icons/flutter.png',
                        onPressed: () {
                          // Navigate to the fifth screen
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Screen5()));
                        }),
                  ],
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ],
      ),
    ));
  }
}
