import 'package:fitness/Constant/Colors.dart';
import 'package:flutter/material.dart';

class GenderIcon extends StatelessWidget {
  final String gender;
  final IconData icon;
  final VoidCallback onTap;
  final bool isSelected;

  GenderIcon(
      {required this.onTap,
      required this.gender,
      required this.icon,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: gender == "Female"
            ? EdgeInsets.all(size.width * 0.08)
            : EdgeInsets.all(size.width * 0.11),
        decoration: BoxDecoration(
            color: isSelected ? PrimaryColor : Color.fromARGB(255, 35, 34, 34),
            shape: BoxShape.circle),
        child: Column(
          children: [
            Icon(
              icon,
              size: size.width * 0.1,
              color: isSelected ? Colors.black : Colors.white,
            ),
            SizedBox(height: size.height * 0.01),
            Text(
              gender,
              style: TextStyle(
                  fontSize: size.width * 0.05,
                  color: isSelected ? Colors.black : Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
