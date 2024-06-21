import 'package:flutter/material.dart';

class Detailspagetitle extends StatelessWidget {
  final String title;
  final String text;
  final Color color;
  Detailspagetitle(
      {required this.title, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double screenWidth = size.width;
    double paddingValue = screenWidth * 0.08;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.1,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            title.toUpperCase(),
            style: TextStyle(
                color: color,
                fontSize: screenWidth * 0.06,
                fontFamily: "KanitSB"),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: paddingValue),
          child: Text(
            text,
            style: TextStyle(
              color: color,
              fontSize: screenWidth * 0.045,
              fontFamily: 'KanitR',
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
