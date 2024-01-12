import 'package:flutter/material.dart';

class Terms_Condition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms and Conditions'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to the Project and Research Hub!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              'The "Project and Research Hub" is a versatile system created to support final year students, MPhil, and PhD students...',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16.0),
            Text(
              '1. Acceptance of Terms',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              'By using the "Project and Research Hub," you agree to comply with and be bound by these terms and conditions...',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16.0),
            Text(
              '2. Account Information',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              'You are responsible for maintaining the confidentiality of your account and password and for restricting access to your account...',
              style: TextStyle(fontSize: 16),
            ),
            // Add more sections based on your requirements
            SizedBox(height: 16.0),
            Text(
              '3. Changes to Terms',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              'We reserve the right to update or change these terms at any time without notice. Your continued use of the service after any such modifications...',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16.0),
            Text(
              '4. Contact Information',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              'If you have any questions about these terms and conditions, please contact us at support@example.com.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
