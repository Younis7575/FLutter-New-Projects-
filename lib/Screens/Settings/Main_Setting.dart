import 'package:final_year_project/Screens/Settings/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'About.dart';
import 'TermCondition.dart';
import 'help.dart';

class MainSettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            buildSettingsOption(context, Icons.person, 'Profile', ProfileScreen()),
            buildSettingsOption(context, Icons.notifications, 'Notifications', NotificationsScreen()),
            buildSettingsOption(context, Icons.security, 'Security & Security', PrivacyScreen()),
            buildSettingsOption(context, Icons.mode_night, 'Change Theme', ModeScreen()),
            buildSettingsOption(context, Icons.help, 'Help & Support', Help_SupportScreen()),
            buildSettingsOption(context, Icons.feedback, 'Feedback', Feedback()),
            buildSettingsOption(context, Icons.anchor_sharp, 'Terms & Condition', Terms_Condition()),
            buildSettingsOption(context, Icons.medical_information_sharp, 'General', GeneralInformation()),
            buildSettingsOption(context, Icons.person_pin, 'About Us', AboutUs()),
            buildSettingsOption(context, Icons.logout, 'Logout', LogoutScreen()),
          ],
        ),
      ),
    );
  }

  ListTile buildSettingsOption(BuildContext context, IconData icon, String title, Widget screen) {
    return ListTile(
      leading: Icon(icon,color: Colors.blue,),
      title: Text(title),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
    );
  }
}



class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: Center(
        child: Text('Notifications Screen Content'),
      ),
    );
  }
}
class PrivacyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Text('Profile Screen Content'),
      ),
    );
  }
}


class Feedback extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: Center(
        child: Text('Notifications Screen Content'),
      ),
    );
  }
}

class GeneralInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: Center(
        child: Text('Notifications Screen Content'),
      ),
    );
  }
}
class ModeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Text('Profile Screen Content'),
      ),
    );
  }
}
class LogoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: Center(
        child: Text('Notifications Screen Content'),
      ),
    );
  }
}


