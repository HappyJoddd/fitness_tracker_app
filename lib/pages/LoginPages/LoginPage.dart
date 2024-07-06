import 'dart:developer';

import 'package:fitness/Constant/Colors.dart';
import 'package:fitness/pages/DetailsPage/Gender.dart';
import 'package:fitness/pages/HomePage/homepage.dart';
import 'package:fitness/pages/LoginPages/Auth_services.dart';
import 'package:fitness/pages/LoginPages/Registar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _auth = AuthServices();
  final _email = TextEditingController();
  final _password = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _email.dispose();
    _password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Image.asset('assets/images/Background.png',
                  fit: BoxFit.cover,
                  width: screenwidth,
                  height: screenheight * 0.65),
            ),
            Positioned(
                top: screenheight * 0.04,
                left: screenwidth * 0.04,
                right: screenwidth * 0.04,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: PrimaryColor,
                        textStyle: const TextStyle(shadows: [
                          Shadow(
                            blurRadius: 10.0,
                            color: Colors.black,
                            offset: Offset(5.0, 5.0),
                          ),
                        ]),
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: PrimaryColor,
                            fontSize: screenwidth * 0.05,
                            fontWeight: FontWeight.w500),
                      )),
                  TextButton(
                      onPressed: () {
                        Get.to(() => const RegisterPage(),
                            transition: Transition.rightToLeft,
                            duration: const Duration(milliseconds: 500));
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                      ),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: screenwidth * 0.04,
                            fontWeight: FontWeight.w500),
                      )),
                  const Expanded(child: SizedBox.shrink()),
                  CircleAvatar(
                    radius: screenwidth * 0.05,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                ])),
            Positioned(
              top: screenheight * 0.4,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenheight * 0.04),
                child: Text(
                  "Welcome Back, \nUser".toUpperCase(),
                  style: TextStyle(
                      fontSize: screenwidth * 0.09,
                      color: Colors.white,
                      fontFamily: 'Kanit'),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: screenheight * 0.63),
              constraints: BoxConstraints(
                  maxHeight: screenheight * 0.5, maxWidth: screenwidth),
              child: SizedBox(
                height: screenheight * 0.5,
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenheight * 0.04),
                    child: Column(children: [
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        controller: _email,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: screenwidth * 0.04,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade800),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade800),
                            )),
                      ),
                      SizedBox(height: screenheight * 0.02),
                      TextFormField(
                          style: TextStyle(color: Colors.white),
                          controller: _password,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(
                              color: Colors.grey[500],
                              fontSize: screenwidth * 0.04,
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade800)),
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade300),
                            ),
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/forgotpassword');
                            },
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                color: PrimaryColor,
                                fontSize: screenwidth * 0.04,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screenheight * 0.05),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: screenheight * 0.07,
                              width: screenheight * 0.07,
                              decoration: BoxDecoration(
                                color: Colors.grey[800],
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: TextButton(
                                  onPressed: () {
                                    //Add Google SignIn Logic
                                  },
                                  child: Image.asset(
                                    "assets/images/Google.png",
                                    height: screenheight * 0.07,
                                  )),
                            ),
                            SizedBox(width: screenwidth * 0.05),
                            Container(
                              height: screenheight * 0.07,
                              width: screenheight * 0.07,
                              decoration: BoxDecoration(
                                color: Colors.grey[800],
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  // Add Apple sign-in logic
                                },
                                child: Image.asset(
                                  'assets/images/apple.png',
                                  color: Colors.white,
                                  height: screenheight * 0.05,
                                ),
                              ),
                            ),
                            const Expanded(child: SizedBox.shrink()),
                            Container(
                              height: screenheight * 0.06,
                              width: screenwidth * 0.3,
                              decoration: BoxDecoration(
                                color: PrimaryColor,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: TextButton(
                                onPressed: _login,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Login",
                                      style: TextStyle(
                                        fontSize: screenwidth * 0.04,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                    ])),
              ),
            )
          ],
        ),
      ),
    );
  }

  gotoHome(BuildContext context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => const GenderPage()));
  _login() async {
    final user =
        await _auth.loginUserWithEmailAndPassward(_email.text, _password.text);
    if (user != null) {
      log("User Logged In");
      gotoHome(context);
    }
  }
}
