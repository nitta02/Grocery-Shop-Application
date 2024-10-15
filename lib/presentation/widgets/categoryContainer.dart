// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:grocery_shop_app/presentation/pages/categoryDetails.dart';
import 'package:grocery_shop_app/core/model/categoryClass.dart';

class CategoryContainer extends StatelessWidget {
  final CategoryModel category;

  const CategoryContainer({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryDetailsScreen(
              categoryName: category.categoryName,
              items: category.items,
            ),
          ),
        );
      },
      child: Container(
        height: 100,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(category.categoryImagePath),
                ),
              ),
            ),
            Text(category.categoryName),
          ],
        ),
      ),
    );
  }
}
