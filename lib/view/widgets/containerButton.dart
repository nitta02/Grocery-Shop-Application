// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomContainerButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color continerColor;
  final Function()? onTap;
  const CustomContainerButton(
      {super.key,
      required this.text,
      required this.textColor,
      required this.continerColor,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: continerColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
