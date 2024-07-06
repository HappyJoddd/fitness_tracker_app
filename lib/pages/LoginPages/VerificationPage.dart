import 'package:fitness/Constant/Colors.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
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
              "Check Your Phone. We've sent you a pin in your Phone."
                  .toUpperCase(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.032,
                  fontFamily: 'KanitR'),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: size.height * 0.05),
            Center(
              child: Pinput(
                length: 4,
                
                submittedPinTheme: defaultPinTheme.copyWith(
                  textStyle: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: defaultPinTheme.decoration!.copyWith(
                    color: Color.fromARGB(255, 56, 55, 55),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade500),
                  ),
                ),
                cursor: Container(
                  height: size.height * 0.03,
                  width: 1,
                  color: Colors.white,
                ),
                errorPinTheme: defaultPinTheme.copyBorderWith(
                  border: Border.all(color: Colors.redAccent),
                ),
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
                onCompleted: (pin) => print(pin),
              ),
            ),
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
