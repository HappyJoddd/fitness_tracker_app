import 'package:fitness/models/detailspageTitle.dart';
import 'package:fitness/models/detailspagebutton.dart';
import 'package:fitness/models/scrollselecter.dart';
import 'package:flutter/material.dart';

class Physicalactivitypage extends StatefulWidget {
  const Physicalactivitypage({super.key});

  @override
  State<Physicalactivitypage> createState() => _PhysicalactivitypageState();
}

class _PhysicalactivitypageState extends State<Physicalactivitypage> {
  @override
  Widget build(BuildContext context) {
    List<String> items = [
      "Rookie",
      "Beginner",
      "Intermediate",
      "Advance",
      "True Athlete"
    ];
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
        child: Column(
          children: [
            Detailspagetitle(
                title: "What is your Regular Physical Activity Level?",
                text:
                    "This will help us to create personalised content for you",
                color: Colors.white),
            SizedBox(height: size.height * 0.045),
            SizedBox(
                height: size.height * 0.5,
                child: Scrollselecter(
                  items: items,
                  magnification: 1.3,
                )),
            const Spacer(),
            DetailPageButton(
              text: "Start",
              onFrontTap: () {},
              ShowBackBotton: true,
              onBackTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
