import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class CustomTextFormFeild extends StatelessWidget {
  final String hintText;
  final TextStyle? hintStyle;
  const CustomTextFormFeild({
    super.key,
    required this.hintText,
    this.hintStyle,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          suffixIcon: const Icon(IconlyLight.search),
          hintText: hintText,
          hintStyle: hintStyle,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(5),
          )),
    );
  }
}
