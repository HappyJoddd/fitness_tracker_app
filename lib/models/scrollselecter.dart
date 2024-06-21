import 'package:fitness/Constant/Colors.dart';
import 'package:flutter/material.dart';

class Scrollselecter extends StatelessWidget {
  final List<String> items;

  const Scrollselecter({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListWheelScrollView(
      magnification: 1.3,
      useMagnifier: true,
      overAndUnderCenterOpacity: 0.08,
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
