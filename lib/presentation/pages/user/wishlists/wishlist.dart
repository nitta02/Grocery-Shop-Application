import 'package:flutter/material.dart';
import 'package:grocery_shop_app/core/provider/wishListProivder.dart';
import 'package:grocery_shop_app/presentation/widgets/appBar/appBar.dart';
import 'package:grocery_shop_app/presentation/widgets/productContainer.dart';
import 'package:provider/provider.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<WishlistProvider>(
        builder: (context, value, child) => Column(
          children: [
            const AppBarCustom(text: 'WISHLIST'),
            GridView.builder(
                padding: const EdgeInsets.all(10),
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 4 / 5,
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemCount: value.wishList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final items = value.wishList[index];
                  return ProductContainer(productsModel: items);
                }),
          ],
        ),
      ),
    );
  }
}
