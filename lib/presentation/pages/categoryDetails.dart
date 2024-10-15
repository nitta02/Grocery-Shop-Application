// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:grocery_shop_app/core/model/productModels.dart';
import 'package:grocery_shop_app/presentation/screens/productDetails.dart';

class CategoryDetailsScreen extends StatelessWidget {
  final String categoryName;
  final List<ProductsModel> items;

  const CategoryDetailsScreen({
    super.key,
    required this.categoryName,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
      ),
      body: ListView.builder(
        itemCount: items.length,
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ProductDetails(productModel: items[index]),
                  ));
            },
            child: Card(
              margin: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: ListTile(
                title: Text(items[index].itemName),
                subtitle: Text("BDT ${items[index].price.toString()}/Kg"),
                leading: Image.asset(items[index].itemImagePath),
              ),
            ),
          );
        },
      ),
    );
  }
}
