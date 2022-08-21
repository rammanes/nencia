import 'package:flutter/material.dart';

import '../constants/app_color.dart';
import '../constants/size_config.dart';

class EmailField extends StatelessWidget {
  final TextEditingController emailController;
  final String text;
  const EmailField({Key? key, required this.emailController, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: text,
          prefixIcon:Icon(
              Icons.email_outlined,
              size:  SizeConfig.defaultSize! * 2,
              color: AppConstants.appAlternativePrimary,
          ),
          filled: true,
          labelStyle: const TextStyle(color: AppConstants.appSecondaryColor),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: AppConstants.appAlternativeSecondary),
              borderRadius: BorderRadius.circular(10)
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: AppConstants.appAlternativeSecondary),
              borderRadius: BorderRadius.circular(10)
          ),
        ),
      ),
    );
  }
}
