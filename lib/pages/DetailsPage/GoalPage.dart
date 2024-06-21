import 'package:fitness/models/detailspageTitle.dart';
import 'package:fitness/models/detailspagebutton.dart';
import 'package:fitness/models/scrollselecter.dart';
import 'package:flutter/material.dart';

class GoalsPage extends StatefulWidget {
  const GoalsPage({super.key});

  @override
  State<GoalsPage> createState() => _GoalsPageState();
}

class _GoalsPageState extends State<GoalsPage> {
  @override
  Widget build(BuildContext context) {
    List<String> items = [
      "Gain Weight",
      "Lose Weight",
      "Stay Fit",
      "Build Muscle",
      "Improve Endurance"
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
                title: "What is your Goal?",
                text:
                    "This will help us to create personalised content for you",
                color: Colors.white),
            SizedBox(height: size.height * 0.055),
            SizedBox(
                height: size.height * 0.5,
                child: Scrollselecter(
                  items: items,
                )),
            const Spacer(),
            DetailPageButton(
              text: "Next",
              onFrontTap: () {
                Navigator.pushNamed(
                            context, '/activity');
              },
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
