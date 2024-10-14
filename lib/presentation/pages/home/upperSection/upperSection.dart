// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:grocery_shop_app/presentation/widgets/customTextFormField.dart';

class UpperSection extends StatelessWidget {
  const UpperSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      decoration: const BoxDecoration(
        color: Colors.amber,
      ),
      child: Column(
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
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const CustomTextFormFeild(
              hintText: 'Search for products',
              hintStyle: TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 14,
                letterSpacing: 1.8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
