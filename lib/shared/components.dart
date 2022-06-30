import 'package:direlist/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

Widget defaultMaterialButton({
  required double  width,
  required double height,
  Color backColor = AppColors.defultColor,
  double borderRadius = 24,
  double fontSize = 20,
  Color colorText = Colors.white,
  required String text,
  VoidCallback? function,
})=>Container(
  width: width,
  height: height,
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(borderRadius)),
  clipBehavior: Clip.antiAliasWithSaveLayer,
  child: MaterialButton(color: backColor,hoverColor: Colors.black,
    onPressed: function,
  ),
);