// ignore_for_file: file_names

import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:grocery_shop_app/model/class/productModels.dart';

class ProductProvider extends ChangeNotifier {
  //PRODUCTS QUANTITY SECTION=================
  void increaseQuantity(AllProductsModel model) {
    model.quantity = model.quantity + 1;
    notifyListeners();
  }

  void decreaseQuantity(AllProductsModel model) {
    if (model.quantity > 1) {
      model.quantity = model.quantity - 1;
    }
    notifyListeners();
  }

  // void totalPrice(AllProductsModel model) {
  //   double totalPrice = model.price * initalQuantity + initalQuantity;
  //   notifyListeners();
  // }

//

  List<AllProductsModel> _cartItems = [];

  UnmodifiableListView get cartItem => UnmodifiableListView(_cartItems);

  // double get productTotalPrice => _cartItems.fold(
  //       0.0,
  //       (previousValue, element) =>
  //           previousValue + (element.price * element.),
  //     );
}
