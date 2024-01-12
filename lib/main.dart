import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Helpers/Onboarding.dart';
import 'Screens/Splash_Screens/splash_screen.dart';
import 'firebase_options.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, // Or your custom options
  );
  runApp(Project_Hub());
}


class Project_Hub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        '/login': (context) => OnboardingScreen(),
      },
    );
  }
}
