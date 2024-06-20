import 'package:fitness/models/detailspagebutton.dart';
import 'package:fitness/pages/CLientData/Icons-Widget/GenderIcon.dart';
import 'package:flutter/material.dart';

class GenderPage extends StatefulWidget {
  const GenderPage({super.key});

  @override
  State<GenderPage> createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {
  bool isMale = false;
  bool isFemale = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          padding: EdgeInsets.only(
              top: size.height * 0.05,
              left: size.height * 0.03,
              right: size.height * 0.03,
              bottom: size.height * 0.01),
          width: size.height,
          height: size.height,
          child: Column(children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            Text(
              "Tell Us About Yourself".toUpperCase(),
              style: TextStyle(
                  fontSize: size.width * 0.06,
                  color: Colors.white,
                  fontFamily: "KanitSB"),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: size.height * 0.02),
            Container(
              child: Text(
                "This will help us to find the best \n content for you",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.04,
                    fontFamily: 'KanitR'),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: size.height * 0.055),
            GenderIcon(
              gender: "Male",
              icon: Icons.male,
              onTap: () {
                setState(() {
                  isMale = true;
                  isFemale = false;
                });
              },
              isSelected: isMale,
            ),
            SizedBox(height: size.height * 0.05),
            GenderIcon(
              gender: "Female",
              icon: Icons.female,
              onTap: () {
                setState(() {
                  isMale = false;
                  isFemale = true;
                });
              },
              isSelected: isFemale,
            ),
            const Spacer(),
            DetailPageButton(
              text: "Next",
              onFrontTap: () {},
              ShowBackBotton: true,
            ),
          ]),
        ));
  }
}
