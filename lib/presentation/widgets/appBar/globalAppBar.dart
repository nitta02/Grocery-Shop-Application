// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_shop_app/presentation/widgets/customText.dart';

class GlobalAppBar extends StatelessWidget {
  final String text;
  IconData? iconData;
  Function()? onTap;
  GlobalAppBar({
    super.key,
    required this.text,
    this.iconData,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    height: 80,
                    width: 35,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      iconData,
                      color: Colors.green,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomText(
                  text: text,
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  fontColor: Colors.green,
                ),
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 80,
                width: 35,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  IconlyLight.notification,
                  color: Colors.green,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
