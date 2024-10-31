import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_shop_app/data/provider/productProvider.dart';
import 'package:grocery_shop_app/presentation/widgets/appBar/globalAppBar.dart';
import 'package:grocery_shop_app/presentation/widgets/productContainer.dart';
import 'package:provider/provider.dart';

class ViewedScreen extends StatelessWidget {
  const ViewedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ProductProvider>(
        builder: (context, value, child) => Column(
          children: [
            GlobalAppBar(
              text: 'Viewd',
              iconData: IconlyLight.arrowLeft,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: value.cartItems.length,
              itemBuilder: (context, index) => ProductContainer(
                productsModel: value.cartItems[index],
              ),
            )
          ],
        ),
      ),
    );
  }
}
