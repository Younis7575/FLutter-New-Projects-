import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
    _controller.forward();

    _controller.addListener(() {
      if (_controller.isCompleted) {
        Navigator.pushReplacementNamed(context, '/login'); // Replace with your login screen's route
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('assets/images/background4.png'),
        //     fit: BoxFit.cover, // Adjust as needed for image fitting
        //   ),
        // ),
        child: Center(
          child: FadeTransition(
            opacity: _animation,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/logo_image/logo5.png'),
                  SizedBox(height: 50),
                  Text(
                    "Welcome To Project and Research Hub",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text("The Project and Research Hub is a versatile system created to support final year students, MPhil, and PhD students. It serves as a centralized platform that benefits both FYP students and those pursuing MPhil and PhD degrees",
                      style:TextStyle(fontSize: 16,color: Colors.blue),
                      textAlign: TextAlign.justify
                      ,),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

