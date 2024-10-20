// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:grocery_shop_app/presentation/pages/category.dart';
import 'package:grocery_shop_app/presentation/pages/cart.dart';
import 'package:grocery_shop_app/presentation/pages/screens/msgScreen.dart';
import 'package:grocery_shop_app/presentation/pages/screens/user/order/orderScreen.dart';
import 'package:grocery_shop_app/presentation/pages/screens/user/wishlist.dart';
import 'package:grocery_shop_app/presentation/pages/allProductsScreen.dart';
import 'package:grocery_shop_app/presentation/pages/onnSale.dart';

class AppRoutes {
  static const String onSaleScreen = '/OnSaleScreen';
  static const String categoryScreen = '/categoryScreen';
  static const String allProductScreen = '/allProductScreen';
  static const String wishListScreen = '/wishlistScreen';
  static const String orderScreen = '/orderScreen';
  static const String viewedScreen = '/viewedScreen';
  static const String msgScreen = '/MessageScreen';
  static const String cartScreen = '/CartScreen';

  static Map<String, WidgetBuilder> routes = {
    onSaleScreen: (context) => const OnSaleScreen(),
    categoryScreen: (context) => const CatagoryPage(),
    allProductScreen: (context) => const AllProductScreen(),
    wishListScreen: (context) => const WishlistScreen(),
    orderScreen: (context) => const OrderScreen(),
    msgScreen: (context) => const MessageScreen(),
    cartScreen: (context) => const CartPage(),
  };
}
