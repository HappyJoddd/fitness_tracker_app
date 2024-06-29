// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyDzku8mcy0m-Dd8i5qPMLQzdMwv9wHptwM',
    appId: '1:329408888709:web:796a5e91c32dae65774eec',
    messagingSenderId: '329408888709',
    projectId: 'fitness-tracker-app-f4b6e',
    authDomain: 'fitness-tracker-app-f4b6e.firebaseapp.com',
    storageBucket: 'fitness-tracker-app-f4b6e.appspot.com',
    measurementId: 'G-4YM8TY99M3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAY4Ow-pYsYezl0xZvs33Dz6HPMfHLNXsQ',
    appId: '1:329408888709:android:95c0cbc40d722a08774eec',
    messagingSenderId: '329408888709',
    projectId: 'fitness-tracker-app-f4b6e',
    storageBucket: 'fitness-tracker-app-f4b6e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA9rFTHjpp79O_KbBBR9nLJsAvu0eZjPVo',
    appId: '1:329408888709:ios:60f40f5ac2fb5ef5774eec',
    messagingSenderId: '329408888709',
    projectId: 'fitness-tracker-app-f4b6e',
    storageBucket: 'fitness-tracker-app-f4b6e.appspot.com',
    iosBundleId: 'com.example.fitness',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCuCYCXxO-aQevZUN_KrVRJ0x3ym5PYMes',
    appId: '1:954775251263:web:a8c8ac529ae2ffc041cb8a',
    messagingSenderId: '954775251263',
    projectId: 'fitness-tracker-app-39a7f',
    authDomain: 'fitness-tracker-app-39a7f.firebaseapp.com',
    storageBucket: 'fitness-tracker-app-39a7f.appspot.com',
    measurementId: 'G-G3HZZNYJ2K',
  );
}