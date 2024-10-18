// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  Color? fontColor;
  CustomText(
      {super.key,
      required this.text,
      required this.fontWeight,
      required this.fontSize,
      this.fontColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: fontColor,
      ),
    );
  }
}
