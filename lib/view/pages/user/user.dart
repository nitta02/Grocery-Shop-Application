import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_shop_app/view/widgets/CommonListtile.dart';
import 'package:grocery_shop_app/view/widgets/customText.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  final addressEditController = TextEditingController();

  @override
  void dispose() {
    addressEditController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _upperDetailsSection(),
          _optionSection(context),
        ],
      ),
    );
  }

  Column _optionSection(BuildContext context) {
    return Column(
      children: [
        CommonListTile(
          title: 'Address',
          subtitle: 'Address Details',
          iconData: IconlyLight.arrowRight2,
          onTap: () async {
            await _showAddressDetails(context);
          },
        ),
        CommonListTile(
          title: 'Orders',
          iconData: IconlyLight.bag,
          onTap: () {},
        ),
        CommonListTile(
          title: 'Wishlist',
          iconData: IconlyLight.heart,
          onTap: () {},
        ),
        CommonListTile(
          title: 'Viewed',
          iconData: IconlyLight.show,
          onTap: () {},
        ),
        CommonListTile(
          title: 'Theme Mode',
          iconData: IconlyLight.star,
          onTap: () {},
        ),
        CommonListTile(
          title: 'Forget Passowrd',
          iconData: IconlyLight.password,
          onTap: () {},
        ),
        CommonListTile(
          title: 'Sign Out',
          iconData: IconlyLight.logout,
          onTap: () async {
            _showSignOutDialog();
          },
        ),
      ],
    );
  }

  Container _upperDetailsSection() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      height: 180,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
        color: Colors.green.shade400.withOpacity(0.5),
      ),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomText(
                        text: "HI, ",
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontColor: Colors.green,
                      ),
                      CustomText(
                        text: "Tonmoy",
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        fontColor: Colors.white,
                      ),
                    ],
                  ),
                  CustomText(
                    text: "tonmoy@gmail.com",
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    fontColor: Colors.white,
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 100,
                  width: 55,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://img.freepik.com/premium-vector/young-man-avatar-character-vector-illustration-design_24877-18514.jpg'),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  //Address Details and Edit Function
  Future<void> _showAddressDetails(BuildContext context) async {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: const BeveledRectangleBorder(),
        title: const Text(
          'Update Address',
        ),
        content: TextFormField(
          controller: addressEditController,
          maxLines: 3,
          onChanged: (value) {
            addressEditController.text = value;
          },
        ),
        actions: [
          ElevatedButton(
            style: const ButtonStyle(
                shape: WidgetStatePropertyAll(BeveledRectangleBorder())),
            onPressed: () {},
            child: const Text(
              'Cancel',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
          ),
          ElevatedButton(
            style: const ButtonStyle(
                shape: WidgetStatePropertyAll(BeveledRectangleBorder())),
            onPressed: () {},
            child: const Text(
              'Update',
              style: TextStyle(
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }

  //Sign Out Function
  Future<void> _showSignOutDialog() async {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: const BeveledRectangleBorder(),
        title: const Text("Sign Out"),
        content: const Row(
          children: [
            Icon(
              IconlyLight.dangerCircle,
              color: Colors.red,
            ),
            SizedBox(
              width: 15,
            ),
            Text('Are You Sure?'),
          ],
        ),
        actionsAlignment: MainAxisAlignment.spaceBetween,
        actions: [
          ElevatedButton(
            style: const ButtonStyle(
                shape: WidgetStatePropertyAll(BeveledRectangleBorder())),
            onPressed: () {},
            child: const Text(
              'Cancel',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
          ),
          ElevatedButton(
            style: const ButtonStyle(
                shape: WidgetStatePropertyAll(BeveledRectangleBorder())),
            onPressed: () {},
            child: const Text(
              'Sure',
              style: TextStyle(
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
