import 'package:fitness/Constant/Colors.dart';
import 'package:fitness/pages/LoginPages/Widgets/otp.dart';
import 'package:flutter/material.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(left: size.width * 0.03),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(11),
              backgroundColor: IconBackgroundColor,
            ),
            child: Icon(Icons.arrow_back, color: Colors.white),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        width: size.width,
        height: size.height,
        padding: EdgeInsets.only(
            top: size.height * 0.04,
            left: size.height * 0.04,
            right: size.height * 0.04,
            bottom: size.height * 0.01),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Verfication".toUpperCase(),
              style: TextStyle(
                  fontSize: size.width * 0.07,
                  color: Colors.white,
                  fontFamily: 'Kanit'),
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              "Check Your Email. We've sent you a pin in your Email."
                  .toUpperCase(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.032,
                  fontFamily: 'KanitR'),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: size.height * 0.05),
            OtpWidget(),  
            Spacer(),
            Container(
              width: size.width * 0.9,
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Did you receive any code?",
                  style: TextStyle(
                    color: PrimaryColor,
                    fontSize: size.width * 0.04,
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 35),
                width: size.width * 0.9,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: PrimaryColor,
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.3,
                          vertical: size.height * 0.015),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: Text(
                    "Verify",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: size.width * 0.04,
                        fontFamily: "KanitSB"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
