// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_shop_app/view/widgets/customText.dart';
import 'package:grocery_shop_app/view/widgets/customTextFormField.dart';

class CommonAppBar extends StatelessWidget {
  final String text;
  final String hintText;
  const CommonAppBar({super.key, required this.text, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      height: 180,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
        color: Colors.green,
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
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: CustomTextFormFeild(
                hintText: hintText,
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 14,
                  letterSpacing: 1.8,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
