import 'package:flutter/material.dart';


class AppSmallText extends StatelessWidget {
  final String text;
  double size;
  Color textColor;
  AppSmallText({Key? key, required this.text, this.size = 14, this.textColor = Colors.black}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      fontSize: size,
      color: textColor,
    ),);
  }
}

class AppLargeText extends StatelessWidget {
  final String text;
  double size;
  Color textColor;
  AppLargeText({Key? key, required this.text, this.size = 18, this.textColor = Colors.black}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      fontSize: size,
      color: textColor,
      fontWeight: FontWeight.w600
    ),);
  }
}
