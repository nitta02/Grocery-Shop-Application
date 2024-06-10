import 'package:flutter/material.dart';
import 'package:grocery_shop_app/controller/provider/wishListProivder.dart';
import 'package:grocery_shop_app/view/widgets/appBar/appBar.dart';
import 'package:grocery_shop_app/view/widgets/productContainer.dart';
import 'package:provider/provider.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<WishlistProvider>(
        builder: (context, value, child) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              AppBarCustom(text: 'WISHLIST'),
              GridView.builder(
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
      ),
    );
  }
}
