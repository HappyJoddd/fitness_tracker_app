import 'package:fitness/Constant/Colors.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  final _phonenumber = TextEditingController();
  @override
  void deactivate() {
    super.deactivate();
    _phonenumber.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset('assets/images/Background3.png',
                fit: BoxFit.cover,
                width: screenwidth,
                height: screenheight * 0.65),
          ),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: screenheight * 0.45),
              child: Column(children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: screenheight * 0.04),
                  child: Text(
                    "Phone \nVerification".toUpperCase(),
                    style: TextStyle(
                        fontSize: screenwidth * 0.09,
                        color: Colors.white,
                        fontFamily: 'Kanit'),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: screenheight * 0.02),
                Padding(
                  padding: EdgeInsets.only(
                      left: screenwidth * 0.12, right: screenwidth * 0.12),
                  child: Text(
                    "Please Confirm your country code \nand enter your phone number"
                        .toUpperCase(),
                    style: TextStyle(
                      fontSize: screenwidth * 0.035,
                      color: PrimaryColor,
                      fontFamily: 'KanitR',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: screenheight * 0.05),
                Container(
                  constraints: BoxConstraints(
                      maxHeight: screenheight * 0.5, maxWidth: screenwidth),
                  child: SizedBox(
                    height: screenheight * 0.5,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenheight * 0.04),
                      child: Column(
                        children: [
                          IntlPhoneField(
                            cursorColor: Colors.white,
                            controller: _phonenumber,
                            style: TextStyle(color: Colors.white),
                            dropdownTextStyle: TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              labelText: 'Phone Number',
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade500),
                              ),
                            ),
                            initialCountryCode: 'IN',
                          ),
                          SizedBox(height: screenheight * 0.05),
                          Container(
                            height: screenheight * 0.06,
                            width: screenwidth * 0.6,
                            child: ElevatedButton(
                              onPressed: () {
                                gotoVerification(context);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: PrimaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              child: Text(
                                "SEND CODE",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: screenwidth * 0.05,
                                    fontFamily: 'KanitM'),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ]));
  }

  gotoVerification(BuildContext context) =>
      Navigator.pushNamed(context, '/verification');
}
