import 'package:fitness/Constant/Colors.dart';
import 'package:flutter/material.dart';

class DetailPageButton extends StatelessWidget {
  final String text;
  final VoidCallback onFrontTap;
  final VoidCallback? onBackTap;
  final bool ShowBackBotton;
  DetailPageButton(
      {required this.text,
      required this.onFrontTap,
      this.onBackTap,
      this.ShowBackBotton = false});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(children: [
      if (ShowBackBotton)
        Container(
          child: ElevatedButton(
            onPressed: onBackTap,
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(11),
              backgroundColor: IconBackgroundColor,
            ),
            child: Icon(Icons.arrow_back_ios_new, color: PrimaryColor),
          ),
        ),
      const Spacer(),
      GestureDetector(
        onTap: onFrontTap,
        child: Container(
          decoration: BoxDecoration(
              color: PrimaryColor, borderRadius: BorderRadius.circular(30)),
          margin: EdgeInsets.only(
              top: size.height * 0.02, bottom: size.height * 0.02),
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          height: size.height * 0.05,
          child: Center(
            child: Row(
              children: [
                Text(
                  text,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: size.width * 0.04,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width: size.width * 0.02),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: size.width * 0.04,
                  weight: 500,
                )
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
