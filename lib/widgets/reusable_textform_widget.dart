import 'package:flutter/material.dart';
import 'package:nencia/constants/app_color.dart';

class ReUsableTextFormWidget extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  const ReUsableTextFormWidget({Key? key, required this.controller, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextFormField(
        controller: controller,
        textInputAction: TextInputAction.next, style: const TextStyle(color: Colors.black),
        decoration:  InputDecoration(
          labelText: text,
          labelStyle: const TextStyle(color: AppConstants.appSecondaryColor),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: AppConstants.appAlternativeSecondary),
              borderRadius: BorderRadius.circular(10)
          ),
          filled: true,
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: AppConstants.appAlternativeSecondary),
              borderRadius: BorderRadius.circular(10)
          ),
        ),
      ),
    );
  }
}
