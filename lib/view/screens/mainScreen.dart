// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_shop_app/view/pages/cart.dart';
import 'package:grocery_shop_app/view/pages/category.dart';
import 'package:grocery_shop_app/view/pages/home.dart';
import 'package:grocery_shop_app/view/pages/user.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //List of Pages

  List<Widget> pages = [
    const HomePage(),
    const CatagoryPage(),
    const CartPage(),
    const UserPage(),
  ];
  int currentIndex = 0;

  void selectedPage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
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
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
