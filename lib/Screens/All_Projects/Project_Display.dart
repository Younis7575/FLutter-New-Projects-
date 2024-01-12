import 'package:final_year_project/Screens/All_Projects/Aiproject.dart';
import 'package:final_year_project/Screens/All_Projects/android.dart';
import 'package:final_year_project/Screens/All_Projects/apple.dart';
import 'package:final_year_project/Screens/All_Projects/blockchain.dart';
import 'package:final_year_project/Screens/All_Projects/crossapp.dart';
import 'package:final_year_project/Screens/All_Projects/desktop.dart';
import 'package:final_year_project/Screens/All_Projects/iotproject.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../Widgets/CustomContainer.dart';
import 'Website.dart';



class ProjectsScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            SizedBox(height: 40,),
            GestureDetector(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>WebsiteProject()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: CustomImageTextContainer(
                  imagePath: 'assets/images/website.png',
                  text: 'Websites',
                ),
              ),
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AndroidProject()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: CustomImageTextContainer(
                  imagePath: 'assets/images/androidlogo.png',
                  text: 'Android Apps',
                ),
              ),
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>iosProject()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: CustomImageTextContainer(
                  imagePath: 'assets/images/ioslogo.png',
                  text: 'IOs Apps',
                ),
              ),
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CrossProject()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: CustomImageTextContainer(
                  imagePath: 'assets/images/crossapplogo.png',
                  text: 'Cross Apps',
                ),
              ),
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>iotProject()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: CustomImageTextContainer(
                  imagePath: 'assets/images/lotapplogo.png',
                  text: 'IOT Projects',
                ),
              ),
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AiProject()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: CustomImageTextContainer(
                  imagePath: 'assets/images/ailogo.png',
                  text: 'Ai Projects',
                ),
              ),
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>BlockchainProject()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: CustomImageTextContainer(
                  imagePath: 'assets/images/blockchainlogo.png',
                  text: 'Block Chain',
                ),
              ),
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DesktopProject()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: CustomImageTextContainer(
                  imagePath: 'assets/images/desktoplogo.png',
                  text: 'Desktop',
                ),
              ),
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }

}
