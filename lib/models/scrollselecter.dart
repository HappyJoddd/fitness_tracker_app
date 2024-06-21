import 'package:fitness/Constant/Colors.dart';
import 'package:flutter/material.dart';

class Scrollselecter extends StatelessWidget {
  final List<String> items;
  final double magnification;

  const Scrollselecter({super.key, required this.items, required this.magnification});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListWheelScrollView(
      magnification: magnification,
      useMagnifier: true,
      overAndUnderCenterOpacity: 0.2,
      physics: FixedExtentScrollPhysics(),
      controller: FixedExtentScrollController(initialItem: items.length ~/ 2),
      itemExtent: size.height * 0.05,
      diameterRatio: 1.5,
      children: items.map((level) {
        return Text(
          level,
          style: TextStyle(
              fontSize: level == "cm" ? 15 : 30,
              color: PrimaryColor,
              fontWeight: FontWeight.bold),
        );
      }).toList(),
    );
  }
}
