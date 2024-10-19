// ignore_for_file: file_names

import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:grocery_shop_app/core/model/productModels.dart';

class ProductProvider extends ChangeNotifier {
  final List<ProductsModel> _cartItems = [];

  List<ProductsModel> get cartItems => UnmodifiableListView(_cartItems);

  // Method to add item to cart and increase quantity if already added
  void addToCart(ProductsModel product) {
    // Check if the item already exists in the cart
    final existingProduct = _cartItems.firstWhere(
      (item) => item.itemName == product.itemName,
      orElse: () => ProductsModel(
        itemName: '',
        itemImagePath: '',
        price: 0,
        quantity: 0,
      ),
    );

    if (existingProduct.itemName != '') {
      // If the item already exists, increase the quantity
      existingProduct.quantity += 1;
    } else {
      // If the item does not exist, add it to the cart
      _cartItems.add(ProductsModel(
        itemName: product.itemName,
        itemImagePath: product.itemImagePath,
        price: product.price,
        quantity: 1,
      ));
    }

    notifyListeners(); // Notify listeners to update the UI
  }

  // Optionally, you can add a method to remove an item or decrease quantity
  void removeFromCart(ProductsModel product) {
    _cartItems.remove(product);
    notifyListeners();
  }

  void decreaseQuantity(ProductsModel product) {
    final existingProduct = _cartItems.firstWhere(
      (item) => item.itemName == product.itemName,
      orElse: () => ProductsModel(
        itemName: '',
        itemImagePath: '',
        price: 0,
        quantity: 0,
      ),
    );

    if (existingProduct.itemName != '' && existingProduct.quantity > 1) {
      existingProduct.quantity -= 1;
    } else {
      _cartItems.remove(product); // Remove the product if the quantity is 1
    }

    notifyListeners();
  }
}
