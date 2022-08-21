import 'package:flutter/material.dart';
import 'package:nencia/constants/app_color.dart';

import '../constants/size_config.dart';

class PasswordField extends StatefulWidget {
  final TextEditingController controller;
  final String text;
  const PasswordField({Key? key, required this.controller, required this.text}) : super(key: key);

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isHidden = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        controller: widget.controller,
        obscureText: !isHidden,
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration (
            labelText: widget.text,
            prefixIcon: Icon(
                Icons.lock,
                size:  SizeConfig.defaultSize! * 2,
                color: AppConstants.appAlternativePrimary,
            ),
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
            suffixIcon: IconButton(onPressed: togglePasswordVisibility, icon: isHidden?Icon(Icons.visibility,  size:  SizeConfig.defaultSize! * 2,
              color: AppConstants.appAlternativePrimary,): Icon(Icons.visibility_off,  size:  SizeConfig.defaultSize! * 2,
              color: AppConstants.appAlternativePrimary,))
        ),

      ),
    );
  }
  void togglePasswordVisibility()=> setState(()=>isHidden = !isHidden);
}