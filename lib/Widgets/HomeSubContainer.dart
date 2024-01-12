import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class HomeCustomContainer extends StatelessWidget {
  final IconData icon;
  final String text;

  HomeCustomContainer({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50.0,
          height: 100.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 50.0,
                color: Colors.white,
              ),
            ],
          ),
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize:10,
          ),
        ),
      ],
    );
  }
}
