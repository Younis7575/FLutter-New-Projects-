// import 'package:flutter/material.dart';
// import 'package:flutter_login/flutter_login.dart';
// import '../../Helpers/NavigationBar.dart';
// import '../../Mentore_Screens/Dasboard/DashboardScreen.dart';
//
// const users = {
//   'dribbble@gmail.com': '12345',
//   'hunter@gmail.com': 'hunter',
// };
//
// class StdentLoginScreen extends StatelessWidget {
//   const StdentLoginScreen({super.key});
//
//   Duration get loginTime => const Duration(milliseconds: 2250);
//
//   Future<String?> _authUser(LoginData data) {
//     debugPrint('Name: ${data.name}, Password: ${data.password}');
//     return Future.delayed(loginTime).then((_) {
//       if (!users.containsKey(data.name)) {
//         return 'User not exists';
//       }
//       if (users[data.name] != data.password) {
//         return 'Password does not match';
//       }
//       return null;
//     });
//   }
//
//   Future<String?> _signupUser(SignupData data) {
//     debugPrint('Signup Name: ${data.name}, Password: ${data.password}');
//     return Future.delayed(loginTime).then((_) {
//       return null;
//     });
//   }
//
//   Future<String> _recoverPassword(String name) {
//     debugPrint('Name: $name');
//     return Future.delayed(loginTime).then((_) {
//       if (!users.containsKey(name)) {
//         return 'User not exists';
//       }
//       return null!;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return FlutterLogin(
//       title: 'Student Login',
//       logo: const AssetImage('assets/logo_image/logo5.png'),
//       onLogin: _authUser,
//       onSignup: _signupUser,
//       onSubmitAnimationCompleted: () {
//         Navigator.of(context).pushReplacement(MaterialPageRoute(
//           builder: (context) => NavigationBarScreen(),
//         ));
// //       },
//       onRecoverPassword: _recoverPassword,
//       theme: LoginTheme(
//         pageColorLight: Colors.blueGrey[50],  // Background color of the login page
//         pageColorDark: Colors.blueGrey[900],   // Background color of the login card
//         primaryColor: Color(0xFF0000FF),      // Primary color (#0000ff) for buttons, text fields, etc.
//         accentColor: Colors.deepOrange,        // Secondary color for text fields, etc.
//         errorColor: Colors.red,               // Color for error messages
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

import '../../Helpers/NavigationBar.dart';
import '../../Mentore_Screens/Dasboard/DashboardScreen.dart';
import '../../Screens/Main_Home_Screen/Home Screens/HomeScreen.dart';


const users = {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
};

class StudentLoginScreen extends StatelessWidget {
  const StudentLoginScreen({super.key});

  Duration get loginTime => const Duration(milliseconds: 2250);

  Future<String?> _authUser(LoginData data) {
    debugPrint('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'User not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return null;
    });
  }

  Future<String?> _signupUser(SignupData data) {
    debugPrint('Signup Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    debugPrint('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User not exists';
      }
      return null!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'Student Login',
      logo: const AssetImage('assets/logo_image/logo5.png'),
      onLogin: _authUser,
      onSignup: _signupUser,

      loginProviders: <LoginProvider>[
        LoginProvider(
          icon: FontAwesomeIcons.google,
          label: 'Google',
          callback: () async {
            debugPrint('start google sign in');
            await Future.delayed(loginTime);
            debugPrint('stop google sign in');
            return null;
          },
        ),
        LoginProvider(
          icon: FontAwesomeIcons.facebookF,
          label: 'Facebook',
          callback: () async {
            debugPrint('start facebook sign in');
            await Future.delayed(loginTime);
            debugPrint('stop facebook sign in');
            return null;
          },
        ),
        LoginProvider(
          icon: FontAwesomeIcons.linkedinIn,
          callback: () async {
            debugPrint('start linkdin sign in');
            await Future.delayed(loginTime);
            debugPrint('stop linkdin sign in');
            return null;
          },
        ),
        LoginProvider(
          icon: FontAwesomeIcons.githubAlt,
          callback: () async {
            debugPrint('start github sign in');
            await Future.delayed(loginTime);
            debugPrint('stop github sign in');
            return null;
          },
        ),
      ],
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) =>NavigationBarScreen(),
        ));
      },
      onRecoverPassword: _recoverPassword,
      theme: LoginTheme(
        pageColorLight: Colors.blueGrey[50],  // Background color of the login page
        pageColorDark: Colors.blueGrey[900],   // Background color of the login card
        primaryColor: Color(0xFF0000FF),    // Primary color (#0000ff) for buttons, text fields, etc.
        accentColor: Colors.deepOrange,        // Secondary color for text fields, etc.
        errorColor: Colors.red,               // Color for error messages
      ),
    );
  }
}