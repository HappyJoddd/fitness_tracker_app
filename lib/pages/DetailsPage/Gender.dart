import 'package:fitness/models/detailspageTitle.dart';
import 'package:fitness/models/detailspagebutton.dart';
import 'package:fitness/pages/DetailsPage/Icons-Widget/GenderIcon.dart';
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
            Detailspagetitle(
                title: "Tell Us About Yourself",
                text: "This will help us to find the best \n content for you",
                color: Colors.white),
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
              onFrontTap: () {
                Navigator.pushNamed(
                            context, '/age');
              },
              ShowBackBotton: false,
            ),
          ]),
        ));
  }
}
