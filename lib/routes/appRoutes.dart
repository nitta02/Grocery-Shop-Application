// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:grocery_shop_app/view/pages/category/category.dart';
import 'package:grocery_shop_app/view/pages/wishlists/wishlist.dart';
import 'package:grocery_shop_app/view/screens/allProductsScreen.dart';
import 'package:grocery_shop_app/view/screens/onnSale.dart';

class AppRoutes {
  static const String onSaleScreen = '/OnSaleScreen';
  static const String categoryScreen = '/categoryScreen';
  static const String allProductScreen = '/allProductScreen';
  static const String wishListScreen = '/wishlistScreen';

  static Map<String, WidgetBuilder> routes = {
    onSaleScreen: (context) => const OnSaleScreen(),
    categoryScreen: (context) => const CatagoryPage(),
    allProductScreen: (context) => const AllProductScreen(),
    wishListScreen: (context) => const WishlistScreen(),
  };
}
