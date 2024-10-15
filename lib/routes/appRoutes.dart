// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:grocery_shop_app/presentation/pages/category.dart';
import 'package:grocery_shop_app/presentation/pages/msgScreen.dart';
import 'package:grocery_shop_app/presentation/pages/user/order/orderScreen.dart';
import 'package:grocery_shop_app/presentation/pages/user/viewed/viewedScreen.dart';
import 'package:grocery_shop_app/presentation/pages/user/wishlists/wishlist.dart';
import 'package:grocery_shop_app/presentation/screens/allProductsScreen.dart';
import 'package:grocery_shop_app/presentation/screens/onnSale.dart';

class AppRoutes {
  static const String onSaleScreen = '/OnSaleScreen';
  static const String categoryScreen = '/categoryScreen';
  static const String allProductScreen = '/allProductScreen';
  static const String wishListScreen = '/wishlistScreen';
  static const String orderScreen = '/orderScreen';
  static const String viewedScreen = '/viewedScreen';
  static const String msgScreen = '/MessageScreen';

  static Map<String, WidgetBuilder> routes = {
    onSaleScreen: (context) => const OnSaleScreen(),
    categoryScreen: (context) => const CatagoryPage(),
    allProductScreen: (context) => const AllProductScreen(),
    wishListScreen: (context) => const WishlistScreen(),
    orderScreen: (context) => const OrderScreen(),
    viewedScreen: (context) => const ViewedScreen(),
    msgScreen: (context) => const MessageScreen(),
  };
}
