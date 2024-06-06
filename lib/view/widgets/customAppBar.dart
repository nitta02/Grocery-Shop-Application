// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:grocery_shop_app/view/widgets/customText.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const CustomText(
        text: 'ALL PRODUCTS',
        fontWeight: FontWeight.bold,
        fontSize: 15,
        fontColor: Colors.white,
      ),
    );
  }
}
