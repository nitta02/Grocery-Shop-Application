import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:grocery_shop_app/data/model/productModels.dart';

class WishlistProvider extends ChangeNotifier {
  List<ProductsModel> _wishlist = [];
  bool _isFav = false;

  List<ProductsModel> get wishList => UnmodifiableListView(_wishlist);
  bool get isFav => _isFav;

  void addTowish(ProductsModel productsModel, BuildContext context) {
    _wishlist.add(productsModel);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Added to wishlist'),
      backgroundColor: Colors.amber,
    ));
    _isFav = true;
    notifyListeners();
  }

  void removeWItem(ProductsModel productModel) {
    _wishlist.remove(productModel);
    _isFav = false;
    notifyListeners();
  }
}
