// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class CustomTextFormFeild extends StatelessWidget {
  final String hintText;
  final TextStyle? hintStyle;
  IconData? iconData;
  Color? iconColor;
  CustomTextFormFeild({
    super.key,
    required this.hintText,
    this.hintStyle,
    this.iconData,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          suffixIcon: Icon(
            iconData,
            color: iconColor,
          ),
          hintText: hintText,
          hintStyle: hintStyle,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(5),
          )),
    );
  }
}
