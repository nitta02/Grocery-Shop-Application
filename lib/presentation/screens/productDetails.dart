// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_shop_app/core/provider/productProvider.dart';
import 'package:grocery_shop_app/core/provider/wishListProivder.dart';
import 'package:grocery_shop_app/core/model/productModels.dart';
import 'package:grocery_shop_app/presentation/pages/home/home.dart';
import 'package:grocery_shop_app/presentation/widgets/appBar/customAppBar.dart';
import 'package:grocery_shop_app/presentation/widgets/containerButton.dart';
import 'package:grocery_shop_app/presentation/widgets/customText.dart';
import 'package:provider/provider.dart';

class ProductDetails extends StatelessWidget {
  final ProductsModel productModel;
  const ProductDetails({
    super.key,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    final wishlistProvider = Provider.of<WishlistProvider>(context);
    final value = Provider.of<ProductProvider>(context, listen: false);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              children: [
                CustomAppBar(
                    text: 'DETAILS', imagePath: productModel.itemImagePath),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomText(
                        text: productModel.itemName,
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        fontColor: Colors.black,
                      ),
                      CustomText(
                        text: "BDT ${productModel.price.toString()}/Kg",
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontColor: Colors.green,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 70,
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              ),
                              (route) => false,
                            );
                          },
                          icon: const Icon(
                            IconlyLight.home,
                            color: Colors.green,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            wishlistProvider.addTowish(productModel);
                          },
                          icon: const Icon(
                            IconlyLight.heart,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: CustomContainerButton(
                      onTap: () {
                        value.addtoCart(productModel);
                      },
                      continerColor: Colors.green,
                      text: "Add to Cart",
                      textColor: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: CustomContainerButton(
                      onTap: () {},
                      continerColor: Colors.green,
                      text: "Buy Now",
                      textColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
