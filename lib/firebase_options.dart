// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBF6M0YGUBig3glToFpPrrV-APvuh_Ickc',
    appId: '1:363546834833:web:321986eb8472b28fe78c30',
    messagingSenderId: '363546834833',
    projectId: 'projecthub-431c6',
    authDomain: 'projecthub-431c6.firebaseapp.com',
    storageBucket: 'projecthub-431c6.appspot.com',
    measurementId: 'G-9PP16V8CK9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCZX7iURQFkt9iUYTQx-PlZ_HbHZYy81Yc',
    appId: '1:363546834833:android:12fe81573d21a8a5e78c30',
    messagingSenderId: '363546834833',
    projectId: 'projecthub-431c6',
    storageBucket: 'projecthub-431c6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB3WD1D35UTM-e--ePrwfxoSTvIJSJwc3M',
    appId: '1:363546834833:ios:3f8e1cdda0b1531de78c30',
    messagingSenderId: '363546834833',
    projectId: 'projecthub-431c6',
    storageBucket: 'projecthub-431c6.appspot.com',
    iosBundleId: 'com.example.finalYearProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB3WD1D35UTM-e--ePrwfxoSTvIJSJwc3M',
    appId: '1:363546834833:ios:75fdb46ab1131188e78c30',
    messagingSenderId: '363546834833',
    projectId: 'projecthub-431c6',
    storageBucket: 'projecthub-431c6.appspot.com',
    iosBundleId: 'com.example.finalYearProject.RunnerTests',
  );
}