import 'package:flutter/material.dart';
import 'package:grocery_shop_app/view/pages/home/bodySection/bodySection.dart';
import 'package:grocery_shop_app/view/pages/home/upperSection/upperSection.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            UpperSection(),
            BodySection(),
          ],
        ),
      ),
    );
  }
}
