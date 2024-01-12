import 'package:final_year_project/Screens/Settings/About.dart';
import 'package:final_year_project/Screens/Settings/help.dart';
import 'package:final_year_project/Screens/Settings/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import '../Screens/Add_Projects/Main_AddProject.dart';
import '../Screens/All_Projects/Project_Display.dart';
import '../Screens/Main_Home_Screen/Home Screens/HomeScreen.dart';
import '../Screens/Settings/Main_Setting.dart';
import '../chatScreen.dart';
import '../wese.dart';


class NavigationBarScreen extends StatefulWidget {
  @override
  _NavigationBarScreenState createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int _selectedIndex = 0;
  final _advancedDrawerController = AdvancedDrawerController();

  final List<Widget> _screens = [
    HomeScreenWidget(),
    ChatScreen(),
    AddProjectsScreen(),
    MainSettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdropColor: Colors.blue, // Adjust as needed
      controller: _advancedDrawerController,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: _handleMenuButtonPressed,
            icon: Icon(Icons.menu),
          ),
        ),
        body: _screens[_selectedIndex],
        bottomNavigationBar: CurvedNavigationBar(
          items: [
            Icon(Icons.home, size: 30,color: Colors.white,),
            Icon(Icons.chat, size: 30,color: Colors.white,),
            Icon(Icons.add, size: 30,color: Colors.white,),
            Icon(Icons.settings, size: 30,color: Colors.white,),
          ],
          color: Colors.blue,
          backgroundColor: Colors.white,
          buttonBackgroundColor: Colors.blue,
          index: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
              _advancedDrawerController.hideDrawer(); // Close drawer after navigation
            });
          },
        ),
      ),
      drawer: SafeArea(
        child: Container(
          child: ListTileTheme(
            textColor: Colors.white,
            iconColor: Colors.white,
            child: Column(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text(
                    'Project Hub',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                ListTile(
                  title: Text('Profile'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
                    _advancedDrawerController.hideDrawer();
                  },
                ),
                ListTile(
                  title: Text('FYP Outline'),
                  onTap: () {
                    // Navigate to help screen (add your navigation logic)
                    _advancedDrawerController.hideDrawer();
                  },
                ),
                ListTile(
                  title: Text('R_Work Outline'),
                  onTap: () {
                    // Navigate to help screen (add your navigation logic)
                    _advancedDrawerController.hideDrawer();
                  },
                ),
                ListTile(
                  title: Text('Help'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Help_SupportScreen()));
                    _advancedDrawerController.hideDrawer();
                  },
                ),
                ListTile(
                  title: Text('Contact'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Help_SupportScreen()));
                    _advancedDrawerController.hideDrawer();
                  },
                ),
                ListTile(
                  title: Text('About Us'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutUs()));
                    _advancedDrawerController.hideDrawer();
                  },
                ),
                ListTile(
                  title: Text('Share'),
                  onTap: () {
                    // Implement share functionality
                    _advancedDrawerController.hideDrawer();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    _advancedDrawerController.showDrawer();
  }
}

