import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final String categoryName;
  final String imagePath;
  const CategoryContainer(
      {super.key, required this.categoryName, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(2.5, 5),
            )
          ],
          gradient:
              const LinearGradient(transform: GradientRotation(2.5), colors: [
            Colors.white,
            Colors.white,
            Colors.green,
          ])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 80,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imagePath)),
            ),
          ),
          Text(categoryName),
        ],
      ),
    );
  }
}
