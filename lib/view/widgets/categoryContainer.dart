import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final String categoryName;
  final String imagePath;
  final BoxShape? shape;
  const CategoryContainer(
      {super.key,
      required this.categoryName,
      required this.imagePath,
      this.shape});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                border: Border.all(
                  color: Colors.black12,
                ),
                shape: shape ?? BoxShape.circle,
                image: DecorationImage(image: AssetImage(imagePath))),
          ),
          Text(categoryName),
        ],
      ),
    );
  }
}
