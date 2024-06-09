// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_shop_app/controller/provider/productProvider.dart';
import 'package:grocery_shop_app/model/class/productModels.dart';
import 'package:grocery_shop_app/view/pages/cart/cart.dart';
import 'package:grocery_shop_app/view/widgets/appBar/productAppBar.dart';
import 'package:grocery_shop_app/view/widgets/containerButton.dart';
import 'package:grocery_shop_app/view/widgets/customIconContainer.dart';
import 'package:grocery_shop_app/view/widgets/customText.dart';
import 'package:provider/provider.dart';

class ProductDetails extends StatelessWidget {
  final ProductsModel productModel;
  const ProductDetails({
    super.key,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ProductProvider>(
        builder: (context, value, child) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  ProductAppBar(imagePath: productModel.itemImagePath),
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
                          text: productModel.itmeName,
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          fontColor: Colors.black,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: "BDT ${productModel.price.toString()}",
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontColor: Colors.green,
                            ),
                            SizedBox(
                              height: 40,
                              width: 120,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomIconContainer(
                                      onTap: () {
                                        value.decreaseQuantity(productModel);
                                      },
                                      color: Colors.grey,
                                      iconData: CupertinoIcons.minus,
                                      iconColor: Colors.white),
                                  Text(productModel.quantity.toString()),
                                  CustomIconContainer(
                                      onTap: () {
                                        value.increaseQuantity(productModel);
                                      },
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
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 70,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Expanded(
                    //   child: Column(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       const Text(
                    //         'Total Price',
                    //         style: TextStyle(
                    //           fontSize: 14,
                    //           fontWeight: FontWeight.w200,
                    //         ),
                    //       ),
                    //       Text(
                    //         '${value.productTotalPrice} BDT',
                    //         style: const TextStyle(
                    //           fontSize: 20,
                    //           fontWeight: FontWeight.bold,
                    //           color: Colors.green,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
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
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CartPage(),
                              ));
                        },
                        continerColor: Colors.green,
                        text: "View Cart",
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
