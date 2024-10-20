import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_shop_app/data/provider/productProvider.dart';
import 'package:grocery_shop_app/data/provider/wishListProivder.dart';
import 'package:grocery_shop_app/data/model/productModels.dart';
import 'package:grocery_shop_app/presentation/pages/screens/home/home.dart';
import 'package:grocery_shop_app/presentation/pages/cart.dart';
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
    final productProvider =
        Provider.of<ProductProvider>(context); // Access ProductProvider

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
                              wishlistProvider.addTowish(productModel, context);
                            },
                            icon: wishlistProvider.isFav
                                ? Icon(
                                    IconlyBold.heart,
                                    color: Colors.red,
                                  )
                                : Icon(
                                    IconlyLight.heart,
                                    color: Colors.green,
                                  )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: CustomContainerButton(
                      onTap: () {
                        productProvider
                            .addToCart(productModel); // Add product to cart
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.green,
                            content: Text(
                              "${productModel.itemName} added to cart!",
                            ),
                          ),
                        );
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
                        // Navigate to CartPage with back button
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CartPage(
                                showBackButton:
                                    true), // Pass flag for back button
                          ),
                        );
                      },
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
