import 'package:flutter/material.dart';
import 'package:grocery_shop_app/model/class/productModels.dart';
import 'package:grocery_shop_app/model/lists/allProducts.dart';
import 'package:grocery_shop_app/view/widgets/productContainer.dart';

class AllProductScreen extends StatelessWidget {
  const AllProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<AllProductsModel> allProductItems = allProductsItems;

    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 4 / 5,
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        itemCount: allProductItems.length,
        shrinkWrap: true,
        itemBuilder: (context, index) => ProductContainer(
          imagePath: allProductItems[index].itemImagePath,
          productName: allProductItems[index].itmeName,
          price: allProductItems[index].price,
        ),
      ),
    );
  }
}
