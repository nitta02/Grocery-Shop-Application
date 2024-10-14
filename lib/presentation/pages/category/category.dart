// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_shop_app/core/model/lists/categroyLists.dart';
import 'package:grocery_shop_app/presentation/widgets/categoryContainer.dart';
import 'package:grocery_shop_app/presentation/widgets/customText.dart';
import 'package:grocery_shop_app/presentation/widgets/customTextFormField.dart';

class CatagoryPage extends StatelessWidget {
  const CatagoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
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
                    const CustomText(
                      text: "CATEGORY",
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
                      hintText: 'Search for products',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 14,
                        letterSpacing: 1.8,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: GridView.builder(
              itemCount: categoryModelList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 240 / 250,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) => CategoryContainer(
                category: categoryModelList[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
