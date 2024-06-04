import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ProductContainer extends StatelessWidget {
  final String imagePath;
  final String productName;
  final double price;
  const ProductContainer(
      {super.key,
      required this.imagePath,
      required this.productName,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 5,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                  child: Image.asset(
                    imagePath,
                  ),
                ),
                Text(productName),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("BDT ${price.toString()}"),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(IconlyLight.heart),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: const ButtonStyle(
                    shape: WidgetStatePropertyAll(BeveledRectangleBorder()),
                  ),
                  onPressed: () {},
                  child: const Text('Add'),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: ElevatedButton(
                  style: const ButtonStyle(
                    shape: WidgetStatePropertyAll(BeveledRectangleBorder()),
                  ),
                  onPressed: () {},
                  child: const Text('Buy'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
