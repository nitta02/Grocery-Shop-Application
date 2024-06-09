// ignore_for_file: file_names

import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:grocery_shop_app/model/class/productModels.dart';

class ProductProvider extends ChangeNotifier {
  //PRODUCTS QUANTITY SECTION=================
  void increaseQuantity(ProductsModel model) {
    model.quantity = model.quantity + 1;
    notifyListeners();
  }

  void decreaseQuantity(ProductsModel model) {
    if (model.quantity > 1) {
      model.quantity = model.quantity - 1;
    }
    notifyListeners();
  }

  final List<ProductsModel> _cartItems = [];

  UnmodifiableListView get cartItem => UnmodifiableListView(_cartItems);

  double get productTotalPrice => _cartItems.fold(
        0.0,
        (previousValue, element) =>
            previousValue + (element.price * element.quantity),
      );

  void addtoCart(ProductsModel productsModel) {
    _cartItems.add(productsModel);
  }

  Future<void> removeItem(ProductsModel productsModel) async {
    _cartItems.remove(productsModel);
  }
}
