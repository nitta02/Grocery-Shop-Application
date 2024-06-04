import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_shop_app/view/widgets/customTextFormField.dart';

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
          image: DecorationImage(
            image: AssetImage(
              'assets/images/img2.jpg',
            ),
            filterQuality: FilterQuality.high,
            fit: BoxFit.fill,
          ),
          color: Colors.green,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg'),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(IconlyLight.bag),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: CustomTextFormFeild(
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
