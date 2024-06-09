import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_shop_app/controller/provider/productProvider.dart';
import 'package:grocery_shop_app/view/widgets/appBar/globalAppBar.dart';
import 'package:grocery_shop_app/view/widgets/containerButton.dart';
import 'package:grocery_shop_app/view/widgets/customIconContainer.dart';
import 'package:grocery_shop_app/view/widgets/customText.dart';
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
                  itemCount: value.cartItem.length,
                  itemBuilder: (context, index) {
                    final items = value.cartItem[index];
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
                                text: items.itmeName,
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
                                            onTap: () {},
                                            color: Colors.grey,
                                            iconData: CupertinoIcons.minus,
                                            iconColor: Colors.white),
                                        Text(items.quantity.toString()),
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
                              onTap: () {
                                value.removeItem(items);
                              },
                              color: Colors.red,
                              iconData: CupertinoIcons.delete,
                              iconColor: Colors.white)
                        ],
                      ),
                    );
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
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
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
            ),
          ],
        ),
      ),
    );
  }
}
