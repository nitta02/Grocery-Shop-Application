import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_shop_app/data/provider/productProvider.dart';
import 'package:grocery_shop_app/presentation/widgets/appBar/globalAppBar.dart';
import 'package:grocery_shop_app/presentation/widgets/productContainer.dart';
import 'package:provider/provider.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ProductProvider>(
        builder: (context, value, child) => Column(
          children: [
            GlobalAppBar(
              text: 'Orders',
              iconData: IconlyLight.arrowLeft,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => ProductContainer(
                productsModel: value.cartItems[index],
              ),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: value.cartItems.length,
            )
          ],
        ),
      ),
    );
  }
}
