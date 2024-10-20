// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_shop_app/presentation/pages/cart.dart';
import 'package:grocery_shop_app/presentation/widgets/customText.dart';

class CustomAppBar extends StatelessWidget {
  String? imagePath;
  final String text;
  CustomAppBar({
    super.key,
    this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      height: 250,
      decoration: BoxDecoration(
        color: Colors.green.shade400.withOpacity(0.5),
      ),
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 80,
                  width: 35,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Center(
                    child: Icon(
                      IconlyLight.arrowLeft2,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
              CustomText(
                text: text,
                fontWeight: FontWeight.w500,
                fontSize: 20,
                fontColor: Colors.white,
              ),
              GestureDetector(
                onTap: () {
                  // Navigate to CartPage with back button
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CartPage(
                          showBackButton: true), // Pass flag for back button
                    ),
                  );
                },
                child: Container(
                  height: 80,
                  width: 35,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Icon(
                    IconlyLight.buy,
                    color: Colors.green,
                  ),
                ),
              )
            ],
          ),
          Image.asset(
            imagePath ?? '',
            height: 150,
          ),
        ],
      ),
    );
  }
}
