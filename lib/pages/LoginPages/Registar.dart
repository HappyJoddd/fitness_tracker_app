import 'dart:developer';

import 'package:fitness/Constant/Colors.dart';
import 'package:fitness/pages/LoginPages/Auth_services.dart';
import 'package:fitness/pages/LoginPages/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _auth = AuthServices();

  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _name.dispose();
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
              child: Image.asset('assets/images/background_2.png',
                  fit: BoxFit.cover,
                  width: screenwidth,
                  height: screenheight * 0.6),
            ),
            Positioned(
                top: screenheight * 0.04,
                left: screenwidth * 0.04,
                right: screenwidth * 0.04,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  TextButton(
                      onPressed: () {
                        Get.to(() => const LoginPage(),
                            transition: Transition.leftToRight,
                            duration: const Duration(milliseconds: 500));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: screenwidth * 0.04,
                            fontWeight: FontWeight.w500),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: PrimaryColor,
                            fontSize: screenwidth * 0.05,
                            fontWeight: FontWeight.w500),
                      )),
                ])),
            Positioned(
              top: screenheight * 0.45,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenheight * 0.04),
                child: Text(
                  "Hello Rookies".toUpperCase(),
                  style: TextStyle(
                      fontSize: screenwidth * 0.09,
                      color: Colors.white,
                      fontFamily: 'Kanit'),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: screenheight * 0.55),
              constraints: BoxConstraints(
                  maxHeight: screenheight * 0.6, maxWidth: screenwidth),
              child: SizedBox(
                height: screenheight * 0.56,
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenheight * 0.04),
                    child: Column(children: [
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        controller: _name,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            hintText: "Name",
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
                      SizedBox(height: screenheight * 0.03),
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
                      SizedBox(height: screenheight * 0.03),
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
                                onPressed: _signup,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Sign Up",
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
    context,MaterialPageRoute(builder: (context) => const LoginPage())
  );
  _signup() async {
    final user =
        _auth.createUserWithEmailAndPassward(_email.text, _password.text);
    // ignore: unnecessary_null_comparison
    if (user != null) {
      log("User Created Succesfully");
      gotoHome(context);
    }
  }
}
