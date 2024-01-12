import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TeacherClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Teacher Class')),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('forms').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }

          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              var form = snapshot.data!.docs[index];
              return ListTile(
                title: Text(form['title']),
                subtitle: Text(form['status']),
                onTap: () {
                  _showFormDetailsDialog(context, form);
                },
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        _deleteForm(form.id);
                      },
                    ),
                    // Accept button
                    IconButton(
                      icon: Icon(Icons.check),
                      onPressed: () {
                        _updateFormStatus(form.id, 'accepted');
                      },
                    ),
                    // Cancel button
                    IconButton(
                      icon: Icon(Icons.cancel),
                      onPressed: () {
                        _updateFormStatus(form.id, 'canceled');
                      },
                    ),
                    // Update button
                    IconButton(
                      icon: Icon(Icons.update),
                      onPressed: () {
                        _updateFormStatus(form.id, 'updated');
                      },
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  void _showFormDetailsDialog(BuildContext context, QueryDocumentSnapshot form) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Form Details'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Title: ${form['title']}'),
              Text('Introduction: ${form['introduction']}'),
              Text('Features: ${form['features']}'),
              Text('Models: ${form['models']}'),
              Text('Tools & Technology: ${form['tools']}'),
              // Add more fields as needed
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  void _deleteForm(String formId) {
    FirebaseFirestore.instance.collection('forms').doc(formId).delete();
  }

  void _updateFormStatus(String formId, String newStatus) {
    FirebaseFirestore.instance.collection('forms').doc(formId).update({
      'status': newStatus,
    });
  }
}
