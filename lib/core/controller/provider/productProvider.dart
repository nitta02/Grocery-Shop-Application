import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:grocery_shop_app/core/model/class/productModels.dart';

class ProductProvider extends ChangeNotifier {
  final List<ProductsModel> _cartItems = [];

  UnmodifiableListView<ProductsModel> get cartItems =>
      UnmodifiableListView(_cartItems);

  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  void addtoCart(ProductsModel productsModel) {
    _cartItems.add(productsModel);
    notifyListeners();
    _snakBar('Item is Added');
  }

  void removeItem(ProductsModel productsModel) {
    _cartItems.remove(productsModel);
    notifyListeners();
    _snakBar('Item is Removed');
  }

  void increaseQuantity(ProductsModel model) {
    model.quantity += 1;
    notifyListeners();
  }

  void decreaseQuantity(ProductsModel model) {
    if (model.quantity > 1) {
      model.quantity -= 1;
    }
    notifyListeners();
  }

  double get totalPrice {
    double total = 0.0;
    for (var item in _cartItems) {
      total += item.price * item.quantity;
    }
    return total;
  }

  //Item notification
  void _snakBar(String message) {
    scaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(
          seconds: 2,
        ),
      ),
    );
  }
}
