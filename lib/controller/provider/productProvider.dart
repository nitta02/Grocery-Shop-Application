import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:grocery_shop_app/model/class/productModels.dart';

class ProductProvider extends ChangeNotifier {
  final List<ProductsModel> _cartItems = [];

  void addtoCart(ProductsModel productsModel) {
    _cartItems.add(productsModel);
    notifyListeners();
  }

  void removeItem(ProductsModel productsModel) {
    _cartItems.remove(productsModel);
    notifyListeners();
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
}
