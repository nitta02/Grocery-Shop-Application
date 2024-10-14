import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_shop_app/core/provider/productProvider.dart';
import 'package:grocery_shop_app/presentation/widgets/appBar/globalAppBar.dart';
import 'package:grocery_shop_app/presentation/widgets/containerButton.dart';
import 'package:grocery_shop_app/presentation/widgets/customIconContainer.dart';
import 'package:grocery_shop_app/presentation/widgets/customText.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ProductProvider>(
        builder: (context, value, child) => Column(
          children: [
            const GlobalAppBar(
              text: "CART",
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: value.cartItems.length,
                  itemBuilder: (context, index) {
                    if (value.cartItems.isNotEmpty) {
                      final items = value.cartItems[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              items.itemImagePath,
                              height: 80,
                            ),
                            Column(
                              children: [
                                CustomText(
                                  text: items.itemName,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontColor: Colors.green,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      height: 40,
                                      width: 120,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomIconContainer(
                                              onTap: () {
                                                value.decreaseQuantity(items);
                                              },
                                              color: Colors.grey,
                                              iconData: CupertinoIcons.minus,
                                              iconColor: Colors.white),
                                          Text(items.quantity.toString()),
                                          CustomIconContainer(
                                              onTap: () {
                                                value.increaseQuantity(items);
                                              },
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
                                onTap: () {
                                  value.removeItem(items);
                                },
                                color: Colors.red,
                                iconData: CupertinoIcons.delete,
                                iconColor: Colors.white)
                          ],
                        ),
                      );
                    } else {
                      return const Center(
                        child: Text('Please add Items'),
                      );
                    }
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 70,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Total Price',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          Consumer<ProductProvider>(
                            builder: (context, value, child) {
                              return Text(
                                '${value.totalPrice.toStringAsFixed(2)} BDT',
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                      child: CustomContainerButton(
                        continerColor: Colors.green,
                        text: "Pay Now",
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
