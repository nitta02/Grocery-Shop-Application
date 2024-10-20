import 'package:flutter/material.dart';
import 'package:grocery_shop_app/presentation/pages/cart.dart';
import 'package:grocery_shop_app/presentation/pages/screens/home/home.dart';
import 'package:grocery_shop_app/presentation/pages/screens/msgScreen.dart';
import 'package:grocery_shop_app/presentation/pages/screens/user.dart';

class Screenprovider extends ChangeNotifier {
  //List of Pages

  List pages = [
    const HomePage(),
    const MessageScreen(),
    const CartPage(),
    const UserPage(),
  ];

  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  void selectedIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
