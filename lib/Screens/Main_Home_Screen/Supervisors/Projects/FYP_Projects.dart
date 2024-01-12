import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:final_year_project/Screens/Main_Home_Screen/Projects/FYP_Student_Projects/Screen2015/overview.dart';
import 'package:final_year_project/Screens/Main_Home_Screen/Projects/FYP_Student_Projects/Screen2016/overview.dart';
import 'package:final_year_project/Screens/Main_Home_Screen/Projects/FYP_Student_Projects/Screen2017/overview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../Projects/FYP_Student_Projects/Screen2018/overview.dart';
import '../../Projects/FYP_Student_Projects/Screen2019/overview.dart';
import '../../Projects/FYP_Student_Projects/Screen2020/overview.dart';
import '../../Projects/FYP_Student_Projects/Screen2021/overview.dart';
import '../../Projects/FYP_Student_Projects/Screen2022/overview.dart';
import '../../Projects/FYP_Student_Projects/Screen2023/overview.dart';
import '../../Projects/FYP_Student_Projects/Screen2024/overview.dart';




class PastFYPProjects extends StatelessWidget {
  const PastFYPProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Text("Past FYP Project",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 25),),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Overview2015(),
                        ),
                      );
                    },
                    child: BlurryContainer(
                      width: 130,
                      height: 130,
                      color: Colors.blue,
                      blur: 8,
                      elevation: 6,
                      padding: const EdgeInsets.all(6),
                      child: Center(child: Text("2015",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Overview2016(), // Corrected class name
                        ),
                      );
                    },
                    child: BlurryContainer(
                      width: 130,
                      height: 130,
                      color: Colors.blue,
                      blur: 8,
                      elevation: 6,
                      padding: const EdgeInsets.all(6),
                      child: Center(child: Text("2016",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Overview2017(), // Corrected class name
                        ),
                      );
                    },
                    child: BlurryContainer(
                      width: 130,
                      height: 130,
                      color: Colors.blue,
                      blur: 8,
                      elevation: 6,
                      padding: const EdgeInsets.all(6),
                      child: Center(child: Text("2017",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Overview2018(), // Corrected class name
                        ),
                      );
                    },
                    child: BlurryContainer(
                      width: 130,
                      height: 130,
                      color: Colors.blue,
                      blur: 8,
                      elevation: 6,
                      padding: const EdgeInsets.all(6),
                      child: Center(child: Text("2018",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Overview2019(), // Corrected class name
                        ),
                      );
                    },
                    child: BlurryContainer(
                      width: 130,
                      height: 130,
                      color: Colors.blue,
                      blur: 8,
                      elevation: 6,
                      padding: const EdgeInsets.all(6),
                      child: Center(child: Text("2019",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Overview2020(), // Corrected class name
                        ),
                      );
                    },
                    child: BlurryContainer(
                      width: 130,
                      height: 130,
                      color: Colors.blue,
                      blur: 8,
                      elevation: 6,
                      padding: const EdgeInsets.all(6),
                      child: Center(child: Text("2020",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Overview2021(), // Corrected class name
                        ),
                      );
                    },
                    child: BlurryContainer(
                      width: 130,
                      height: 130,
                      color: Colors.blue,
                      blur: 8,
                      elevation: 6,
                      padding: const EdgeInsets.all(6),
                      child: Center(child: Text("2021",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Overview2022(), // Corrected class name
                        ),
                      );
                    },
                    child: BlurryContainer(
                      width: 130,
                      height: 130,
                      color: Colors.blue,
                      blur: 8,
                      elevation: 6,
                      padding: const EdgeInsets.all(6),
                      child: Center(child: Text("2022",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Overview2023(), // Corrected class name
                        ),
                      );
                    },
                    child: BlurryContainer(
                      width: 130,
                      height: 130,
                      color: Colors.blue,
                      blur: 8,
                      elevation: 6,
                      padding: const EdgeInsets.all(6),
                      child: Center(child: Text("2023",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Overview2024(), // Corrected class name
                        ),
                      );
                    },
                    child: BlurryContainer(
                      width: 130,
                      height: 130,
                      color: Colors.blue,
                      blur: 8,
                      elevation: 6,
                      padding: const EdgeInsets.all(6),
                      child: Center(child: Text("2024",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
