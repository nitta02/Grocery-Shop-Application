// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_shop_app/view/widgets/containerButton.dart';
import 'package:grocery_shop_app/view/widgets/customIconContainer.dart';
import 'package:grocery_shop_app/view/widgets/customText.dart';

class ProductDetails extends StatelessWidget {
  final String productName;
  final String imagePath;
  final double productPrice;
  const ProductDetails({
    super.key,
    required this.productName,
    required this.imagePath,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
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
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomText(
                        text: productName,
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        fontColor: Colors.black,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "BDT ${productPrice.toString()}",
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontColor: Colors.green,
                          ),
                          SizedBox(
                            height: 40,
                            width: 120,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomIconContainer(
                                    onTap: () {},
                                    color: Colors.grey,
                                    iconData: CupertinoIcons.minus,
                                    iconColor: Colors.white),
                                const Text('1'),
                                CustomIconContainer(
                                    onTap: () {},
                                    color: Colors.green,
                                    iconData: CupertinoIcons.add,
                                    iconColor: Colors.white)
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 70,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Price',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      Text(
                        '1200 BDT',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: CustomContainerButton(
                    continerColor: Colors.green,
                    text: "View Cart",
                    textColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}