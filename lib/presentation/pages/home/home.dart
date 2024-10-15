import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_shop_app/presentation/pages/home/bodySection/bodySection.dart';
import 'package:grocery_shop_app/presentation/widgets/customTextFormField.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 12,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _uperSection(),
                const BodySection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column _uperSection() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          height: 2,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text('Tanmoy Sarker',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
            CircleAvatar(
              backgroundColor: Colors.amber,
              backgroundImage: NetworkImage(
                  'https://img.freepik.com/premium-vector/young-man-avatar-character-vector-illustration-design_24877-18514.jpg'),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: CustomTextFormFeild(
            iconData: IconlyLight.search,
            color: Colors.green,
            hintText: 'Search for products',
            hintStyle: const TextStyle(
              fontWeight: FontWeight.w200,
              fontSize: 14,
              letterSpacing: 1.8,
            ),
          ),
        ),
      ],
    );
  }
}
