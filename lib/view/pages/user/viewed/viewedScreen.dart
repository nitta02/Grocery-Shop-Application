import 'package:flutter/material.dart';
import 'package:grocery_shop_app/controller/provider/productProvider.dart';
import 'package:grocery_shop_app/view/widgets/appBar/appBar.dart';
import 'package:grocery_shop_app/view/widgets/productContainer.dart';
import 'package:provider/provider.dart';

class ViewedScreen extends StatelessWidget {
  const ViewedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ProductProvider>(
        builder: (context, value, child) => Column(
          children: [
            const AppBarCustom(text: 'VIEWED'),
            ListView.builder(
              itemCount: value.cartItem.length,
              itemBuilder: (context, index) => ProductContainer(
                productsModel: value.cartItem[index],
              ),
            )
          ],
        ),
      ),
    );
  }
}
