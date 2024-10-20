// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_shop_app/data/provider/screenProvider.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Screenprovider>(context);
    return Scaffold(
      body: provider.pages[provider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: provider.currentIndex,
        onTap: provider.selectedIndex,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        selectedItemColor: Colors.green,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(provider.currentIndex == 0
                ? IconlyBold.home
                : IconlyLight.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(provider.currentIndex == 1
                ? IconlyBold.message
                : IconlyLight.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(
                provider.currentIndex == 2 ? IconlyBold.bag : IconlyLight.bag),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(provider.currentIndex == 3
                ? IconlyBold.profile
                : IconlyLight.profile),
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
