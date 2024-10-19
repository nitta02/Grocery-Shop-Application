import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_shop_app/core/provider/wishListProivder.dart';
import 'package:grocery_shop_app/presentation/widgets/customText.dart';
import 'package:grocery_shop_app/presentation/widgets/productContainer.dart';
import 'package:provider/provider.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final wishProvider = Provider.of<WishlistProvider>(context, listen: false);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        child: Column(
          children: [
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
                      color: Colors.green,
                    ),
                    child: const Center(
                      child: Icon(
                        IconlyLight.arrowLeft2,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                CustomText(
                  text: 'WISHLIST',
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 80,
                    width: 35,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                    child: const Icon(
                      IconlyLight.notification,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            GridView.builder(
                padding: const EdgeInsets.all(10),
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 4 / 5,
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemCount: wishProvider.wishList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final items = wishProvider.wishList[index];
                  return ProductContainer(productsModel: items);
                }),
          ],
        ),
      ),
    );
  }
}
