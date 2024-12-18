// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:grocery_shop_app/presentation/widgets/customText.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: CustomText(
        text: 'ALL PRODUCTS',
        fontWeight: FontWeight.bold,
        fontSize: 15,
        fontColor: Colors.white,
      ),
    );
  }
}
