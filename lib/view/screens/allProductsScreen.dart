// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:grocery_shop_app/model/class/productModels.dart';
import 'package:grocery_shop_app/model/lists/allProducts.dart';
import 'package:grocery_shop_app/view/widgets/appBar/commonAppBar.dart';
import 'package:grocery_shop_app/view/widgets/productContainer.dart';

class AllProductScreen extends StatelessWidget {
  const AllProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductsModel> allProductItems = allProductsItems;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CommonAppBar(
              text: 'PRODUCTS',
              hintText: 'Search for products',
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
                productsModel: allProductItems[index],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
