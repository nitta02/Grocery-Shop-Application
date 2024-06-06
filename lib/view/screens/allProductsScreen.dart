// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_shop_app/model/class/productModels.dart';
import 'package:grocery_shop_app/model/lists/allProducts.dart';
import 'package:grocery_shop_app/view/widgets/customText.dart';
import 'package:grocery_shop_app/view/widgets/customTextFormField.dart';
import 'package:grocery_shop_app/view/widgets/productContainer.dart';

class AllProductScreen extends StatelessWidget {
  const AllProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<AllProductsModel> allProductItems = allProductsItems;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              height: 180,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
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
                        text: "ALL PRODUCTS",
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
                      child: const CustomTextFormFeild(
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
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 4 / 5,
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 10,
              ),
              itemCount: allProductItems.length,
              shrinkWrap: true,
              itemBuilder: (context, index) => ProductContainer(
                imagePath: allProductItems[index].itemImagePath,
                productName: allProductItems[index].itmeName,
                price: allProductItems[index].price,
              ),
            ),
          ],
        ),
      ),
    );
  }
}