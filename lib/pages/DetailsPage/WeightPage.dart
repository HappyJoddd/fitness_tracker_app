import 'package:fitness/models/detailspageTitle.dart';
import 'package:fitness/models/detailspagebutton.dart';
import 'package:fitness/Constant/Colors.dart';
import 'package:flutter/material.dart';

class WeightPage extends StatefulWidget {
  const WeightPage({super.key});

  @override
  State<WeightPage> createState() => _WeightPageState();
}

class _WeightPageState extends State<WeightPage> {
  double weight = 60.0;
  @override
  Widget build(BuildContext context) {
    List<String> levels = [];
    for (var i = 5; i < 500; i++) {
      levels.add(i.isEven ? "|" : "I");
    }

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
                title: "What is your Weight?",
                text:
                    "This will help us to create personalised content for you",
                color: Colors.white),
            SizedBox(height: size.height * 0.055),
            Text(
              "$weight kg",
              style: TextStyle(
                  fontSize: size.width * 0.06,
                  color: PrimaryColor,
                  fontFamily: "Kanit"),
            ),
            SizedBox(height: size.height * 0.05),
            SizedBox(
              height: size.height * 0.4,
              child: RotatedBox(
                quarterTurns: -1,
                child: ListWheelScrollView(
                    itemExtent: size.height * 0.036,
                    magnification: 1.3,
                    useMagnifier: true,
                    overAndUnderCenterOpacity: 0.5,
                    physics: const FixedExtentScrollPhysics(),
                    controller: FixedExtentScrollController(
                        initialItem: (weight * 2).round() - 1),
                    onSelectedItemChanged: (index) {
                      setState(() {
                        weight = (index + 1) / 2;
                      });
                    },
                    children: levels.map((level) {
                      return RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          level,
                          style: TextStyle(
                            color: PrimaryColor,
                            fontSize: size.height * 0.05,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    }).toList()),
              ),
            ),
            const Spacer(),
            DetailPageButton(
              text: "Next",
              onFrontTap: () {
                Navigator.pushNamed(context, '/height');
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
