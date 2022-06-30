import 'package:flutter/material.dart';

import '../utils/colors.dart';
class InputDecorations {
  static InputDecoration buildInputDecoration_1({hint_text = ""}) {
    return InputDecoration(
      hintText: hint_text,
      hintStyle: TextStyle(
      fontSize: 12.9, color: AppColors.textColor),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.iconColor1, width: 0.5),
        borderRadius: const BorderRadius.all(  Radius.circular(0.5)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.iconColor1,width: 1.0 ),
        borderRadius: const BorderRadius.all(
           Radius.circular(5.0)
        ),
      ),
      contentPadding:const EdgeInsets.symmetric(horizontal: 16.0)
    );
  }
}