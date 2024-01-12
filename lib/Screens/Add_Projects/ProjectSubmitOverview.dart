import 'package:final_year_project/Screens/Main_Home_Screen/Supervisors/FYP_Supervisors/SupervisorScreens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'FYP_Reg_Form.dart';

class ContainerScreenTemplate extends StatefulWidget {
  @override
  _ContainerScreenTemplateState createState() => _ContainerScreenTemplateState();
}

class _ContainerScreenTemplateState extends State<ContainerScreenTemplate> {
  List<bool> containersEnabled = [true, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ContainerWidget(1, containersEnabled[0], () {
            navigateToNextScreen(context, 1);
          }),
          ContainerWidget(2, containersEnabled[1], () {
            navigateToNextScreen(context, 2);
          }),
          ContainerWidget(3, containersEnabled[2], () {
            navigateToNextScreen(context, 3);
          }),
          ContainerWidget(4, containersEnabled[3], () {
            navigateToNextScreen(context, 4);
          }),
          ContainerWidget(5, containersEnabled[4], () {
            navigateToNextScreen(context, 5);
          }),
        ],
      ),
    );
  }

  void navigateToNextScreen(BuildContext context, int containerIndex) async {
    final bool result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FYP_Reg_Form()),
    );

    if (result != null && result) {
      setState(() {
        containersEnabled[containerIndex - 1] = true;
        if (containerIndex < 5) {
          containersEnabled[containerIndex] = true;
        }
      });
    }
  }
}

class ContainerWidget extends StatelessWidget {
  final int index;
  final bool isEnabled;
  final VoidCallback onTap;

  ContainerWidget(this.index, this.isEnabled, this.onTap);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isEnabled ? onTap : null,
      child: Container(
        width: 250,
        height: 100,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isEnabled ? Colors.blue : Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            'Place $index',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}




