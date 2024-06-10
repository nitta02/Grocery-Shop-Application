import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:grocery_shop_app/model/class/productModels.dart';

class WishlistProvider extends ChangeNotifier {
  List<ProductsModel> _wishlist = [];

  UnmodifiableListView get wishList => UnmodifiableListView(_wishlist);

  void addTowish(ProductsModel productsModel) {
    _wishlist.add(productsModel);
    notifyListeners();
  }
}
