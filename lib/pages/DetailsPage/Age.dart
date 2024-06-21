import 'package:fitness/models/detailspageTitle.dart';
import 'package:fitness/models/detailspagebutton.dart';
import 'package:fitness/models/scrollselecter.dart';
import 'package:flutter/material.dart';

class AgePage extends StatefulWidget {
  const AgePage({super.key});

  @override
  State<AgePage> createState() => _AgePageState();
}

class _AgePageState extends State<AgePage> {
  @override
  Widget build(BuildContext context) {
    List<String> items = [];
    for (int i = 1; i < 100; i++) {
      items.add(i.toString());
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
                title: "How old are you?",
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
                Navigator.pushNamed(context, '/weight');
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
