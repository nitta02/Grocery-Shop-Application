import 'package:flutter/material.dart';
import 'package:grocery_shop_app/presentation/pages/cart/cart.dart';
import 'package:grocery_shop_app/presentation/pages/category/category.dart';
import 'package:grocery_shop_app/presentation/pages/home/home.dart';
import 'package:grocery_shop_app/presentation/pages/user/user.dart';

class Screenprovider extends ChangeNotifier {
  //List of Pages

  List<Map<String, dynamic>> pages = [
    {
      "page": const HomePage(),
      "title": "Home",
    },
    {
      "page": const CatagoryPage(),
      "title": "Category",
    },
    {
      "page": const CartPage(),
      "title": "Cart",
    },
    {
      "page": const UserPage(),
      "title": "User",
    },
  ];

  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  void selectedIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
