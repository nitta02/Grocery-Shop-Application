import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:grocery_shop_app/data/provider/productProvider.dart';
import 'package:grocery_shop_app/presentation/widgets/containerButton.dart';
import 'package:grocery_shop_app/presentation/widgets/customIconContainer.dart';
import 'package:grocery_shop_app/presentation/widgets/customText.dart';

class CartPage extends StatelessWidget {
  final bool showBackButton; // Flag to determine if back button is needed

  const CartPage({
    super.key,
    this.showBackButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showBackButton // Conditionally show back button
          ? AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context); // Go back to Product Details
                },
              ),
              title: const Text("Cart"),
            )
          : null,
      body: Consumer<ProductProvider>(
        builder: (context, value, child) => Column(
          children: [
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: items.itemName,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                fontColor: Colors.green,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 40,
                                    width: 120,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        // Decrease Quantity
                                        CustomIconContainer(
                                          onTap: () {
                                            Provider.of<ProductProvider>(
                                                    context,
                                                    listen: false)
                                                .decreaseQuantity(items);
                                          },
                                          color: Colors.grey,
                                          iconData: CupertinoIcons.minus,
                                          iconColor: Colors.white,
                                        ),
                                        Text(items.quantity.toString()),
                                        // Increase Quantity
                                        CustomIconContainer(
                                          onTap: () {
                                            Provider.of<ProductProvider>(
                                                    context,
                                                    listen: false)
                                                .addToCart(items);
                                          },
                                          color: Colors.green,
                                          iconData: CupertinoIcons.add,
                                          iconColor: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // Remove Item from Cart
                          CustomIconContainer(
                            onTap: () {
                              Provider.of<ProductProvider>(context,
                                      listen: false)
                                  .removeFromCart(items);
                            },
                            color: Colors.red,
                            iconData: CupertinoIcons.delete,
                            iconColor: Colors.white,
                          ),
                        ],
                      ),
                    );
                  } else {
                    return const Center(
                      child: Text('Please add Items'),
                    );
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 70,
                padding: const EdgeInsets.symmetric(horizontal: 10),
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
                              // Display total price of all cart items
                              final totalPrice = value.cartItems.fold<double>(
                                  0,
                                  (sum, item) =>
                                      sum + (item.price * item.quantity));
                              return Text(
                                'BDT $totalPrice',
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
