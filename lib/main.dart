import 'package:firebase_core/firebase_core.dart';
import 'package:fitness/pages/DetailsPage/Age.dart';
import 'package:fitness/pages/DetailsPage/Gender.dart';
import 'package:fitness/pages/DetailsPage/GoalPage.dart';
import 'package:fitness/pages/DetailsPage/HeightPage.dart';
import 'package:fitness/pages/DetailsPage/PhysicalActivityPage.dart';
import 'package:fitness/pages/DetailsPage/WeightPage.dart';
import 'package:fitness/pages/LoginPages/ForgotPasswordPage.dart';
import 'package:fitness/pages/LoginPages/LoginPage.dart';
import 'package:fitness/pages/LoginPages/Registar.dart';
import 'package:fitness/pages/LoginPages/VerificationPage.dart';
import 'package:fitness/pages/OnBoardingPage/OnBoardingPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      routes: {
        '/onboarding': (context) => OnBoardingPage(),
        '/gender': (context) => GenderPage(),
        '/age': (context) => AgePage(),
        '/height': (context) => HeightPage(),
        '/weight': (context) => WeightPage(),
        "/goal": (context) => GoalsPage(),
        '/activity': (context) => Physicalactivitypage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/forgotpassword': (context) => ForgotPasswordPage(),
        '/verification': (context) => VerificationPage(),
      },
      home: LoginPage(),
    );
  }
}
