import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_shop_app/view/widgets/customIconContainer.dart';

class ProductDetails extends StatelessWidget {
  final String productName;
  final String imagePath;
  final double productPrice;
  const ProductDetails({
    super.key,
    required this.productName,
    required this.imagePath,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            height: 250,
            decoration: BoxDecoration(
              color: Colors.green.shade400.withOpacity(0.5),
            ),
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 80,
                        width: 35,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Center(
                          child: Icon(
                            IconlyLight.arrowLeft2,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Details',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 80,
                        width: 35,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Icon(
                          IconlyLight.notification,
                          color: Colors.green,
                        ),
                      ),
                    )
                  ],
                ),
                Image.asset(
                  imagePath,
                  height: 150,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(productName),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$${productPrice.toString()}"),
                    Container(
                      height: 40,
                      width: 120,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomIconContainer(
                              onTap: () {},
                              color: Colors.grey,
                              iconData: CupertinoIcons.minus,
                              iconColor: Colors.white),
                          const Text('1'),
                          CustomIconContainer(
                              onTap: () {},
                              color: Colors.green,
                              iconData: CupertinoIcons.add,
                              iconColor: Colors.white)
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
