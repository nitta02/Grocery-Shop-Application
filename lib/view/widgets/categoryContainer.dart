import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final String categoryName;
  final String imagePath;
  const CategoryContainer(
      {super.key, required this.categoryName, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.black12,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 60,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(imagePath))),
          ),
          Text(categoryName),
        ],
      ),
    );
  }
}
