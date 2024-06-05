// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_shop_app/view/pages/cart/cart.dart';
import 'package:grocery_shop_app/view/pages/category/category.dart';
import 'package:grocery_shop_app/view/pages/home/home.dart';
import 'package:grocery_shop_app/view/pages/user/user.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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

  //Current Index & page Select Function
  int currentIndex = 0;

  void selectedPage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: selectedPage,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(currentIndex == 0 ? IconlyBold.home : IconlyLight.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
                currentIndex == 1 ? IconlyBold.category : IconlyLight.category),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(currentIndex == 2 ? IconlyBold.bag : IconlyLight.bag),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
                currentIndex == 3 ? IconlyBold.profile : IconlyLight.profile),
            label: 'Profile',
          ),
        ],
        selectedIconTheme: const IconThemeData(
          color: Colors.green,
        ),
        elevation: 5,
      ),
    );
  }
}
