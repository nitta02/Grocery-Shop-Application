import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_shop_app/controller/utils/imagePath.dart';
import 'package:grocery_shop_app/view/widgets/appBar/globalAppBar.dart';
import 'package:grocery_shop_app/view/widgets/containerButton.dart';
import 'package:grocery_shop_app/view/widgets/customIconContainer.dart';
import 'package:grocery_shop_app/view/widgets/customText.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const GlobalAppBar(
            text: "CART",
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      ImagePaths.onSaleItem1,
                      height: 80,
                    ),
                    Column(
                      children: [
                        const CustomText(
                          text: 'Product Name',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontColor: Colors.green,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 40,
                              width: 120,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                    CustomIconContainer(
                        onTap: () {},
                        color: Colors.red,
                        iconData: CupertinoIcons.delete,
                        iconColor: Colors.white)
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 70,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Price',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      Text(
                        '00 BDT',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: CustomContainerButton(
                    continerColor: Colors.green,
                    text: "Pay Now",
                    textColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
