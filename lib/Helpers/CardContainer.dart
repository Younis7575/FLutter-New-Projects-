import 'package:flutter/material.dart';


class CustomContainer extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;

  const CustomContainer({required this.imagePath, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(imagePath),
        ),
      ),
    );
  }
}





