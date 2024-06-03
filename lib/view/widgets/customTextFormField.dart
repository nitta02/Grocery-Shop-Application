import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class CustomTextFormFeild extends StatelessWidget {
  final String hintText;
  const CustomTextFormFeild({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          icon: Icon(IconlyLight.notification),
          suffixIcon: Icon(IconlyLight.search),
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          )),
    );
  }
}
