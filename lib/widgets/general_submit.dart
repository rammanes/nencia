import 'package:flutter/material.dart';

import '../constants/app_color.dart';

class SubmitButton extends StatelessWidget {
  final String buttonText;
  final Function onPressed;
  final Color buttonColor;
  double size;
  SubmitButton({Key? key, required this.buttonText, required this.onPressed, required this.buttonColor, this.size = 18.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed(),
      style: ElevatedButton.styleFrom(
          primary: buttonColor,
          elevation: 3,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5), bottomRight: Radius.circular(5))
          )
      ),
      child: Container(
        width: double.infinity,
        height: 50,
        alignment: Alignment.center,
        child: Text(buttonText, textAlign: TextAlign.center, style:TextStyle(
            fontSize: size,
            fontWeight: FontWeight.bold
        ),),
      ),);
  }
}
