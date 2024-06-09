// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_shop_app/view/widgets/customText.dart';

class ProductAppBar extends StatelessWidget {
  final String imagePath;
  const ProductAppBar({
    super.key,
    required this.imagePath,
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
              const CustomText(
                text: "DETAILS",
                fontWeight: FontWeight.w500,
                fontSize: 20,
                fontColor: Colors.white,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 80,
                  width: 35,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Icon(
                    IconlyLight.notification,
                    color: Colors.green,
                  ),
                ),
              )
            ],
          ),
          Image.asset(
            imagePath,
            height: 150,
          ),
        ],
      ),
    );
  }
}
