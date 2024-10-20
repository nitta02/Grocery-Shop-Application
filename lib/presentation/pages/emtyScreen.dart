import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_shop_app/presentation/widgets/customIconContainer.dart';
import 'package:grocery_shop_app/routes/globalNavigator.dart';

class Emtyscreen extends StatelessWidget {
  const Emtyscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Icon(
                IconlyLight.buy,
                size: 80,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Woopsss',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            CustomIconContainer(
              onTap: () {
                GlobalNavigator.navigateTo(
                    context: context, routeName: '/allProductScreen');
              },
              color: Colors.green,
              iconData: IconlyLight.bag,
              iconColor: Colors.white,
            ),
          ],
        ),
      )),
    );
  }
}
