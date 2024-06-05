import 'package:flutter/material.dart';
import 'package:grocery_shop_app/view/pages/category/category.dart';
import 'package:grocery_shop_app/view/screens/allProductsScreen.dart';
import 'package:grocery_shop_app/view/screens/onnSale.dart';

class AppRoutes {
  static const String onSaleScreen = '/OnSaleScreen';
  static const String categoryScreen = '/categoryScreen';
  static const String allProductScreen = '/allProductScreen';

  static Map<String, WidgetBuilder> routes = {
    onSaleScreen: (context) => OnSaleScreen(),
    categoryScreen: (context) => CatagoryPage(),
    allProductScreen: (context) => AllProductScreen(),
  };
}
