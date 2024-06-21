import 'package:fitness/models/detailspageTitle.dart';
import 'package:fitness/models/detailspagebutton.dart';
import 'package:fitness/models/scrollselecter.dart';
import 'package:flutter/material.dart';

class HeightPage extends StatefulWidget {
  const HeightPage({super.key});

  @override
  State<HeightPage> createState() => _HeightPageState();
}

class _HeightPageState extends State<HeightPage> {
  @override
  Widget build(BuildContext context) {
    List<String> items = [];
    for (int i = 80; i < 220; i++) {
      items.add(i.toString() + "cm");
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
                title: "What is your Height?",
                text:
                    "This will help us to create personalised content for you",
                color: Colors.white),
            SizedBox(height: size.height * 0.055),
            SizedBox(
                height: size.height * 0.5,
                child: Scrollselecter(
                  items: items,
                  magnification: 1.3,
                )),
            const Spacer(),
            DetailPageButton(
              text: "Next",
              onFrontTap: () {
                Navigator.pushNamed(
                            context, '/goal');
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
