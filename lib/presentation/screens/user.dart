import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_shop_app/core/provider/themeProvider.dart';
import 'package:grocery_shop_app/routes/appRoutes.dart';
import 'package:grocery_shop_app/routes/globalNavigator.dart';
import 'package:grocery_shop_app/presentation/widgets/CommonListtile.dart';
import 'package:provider/provider.dart';

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
          trailing: const Icon(IconlyLight.arrowRight2),
          onTap: () async {
            await _showAddressDetails(context);
          },
        ),
        CommonListTile(
          title: 'Orders',
          trailing: const Icon(IconlyLight.bag),
          onTap: () {
            GlobalNavigator.navigateTo(
              context: context,
              routeName: AppRoutes.orderScreen,
            );
          },
        ),
        CommonListTile(
          title: 'Wishlist',
          trailing: const Icon(IconlyLight.heart),
          onTap: () {
            GlobalNavigator.navigateTo(
              context: context,
              routeName: AppRoutes.wishListScreen,
            );
          },
        ),
        CommonListTile(
          title: 'Viewed',
          trailing: const Icon(IconlyLight.show),
          onTap: () {
            GlobalNavigator.navigateTo(
              context: context,
              routeName: AppRoutes.viewedScreen,
            );
          },
        ),
        CommonListTile(
          title: 'Theme Mode',
          trailing: Consumer<Themeprovider>(
            builder: (context, themeProvider, child) => CupertinoSwitch(
              value: themeProvider
                  .isDark, // Dynamically switch based on the provider's state
              onChanged: (value) {
                themeProvider
                    .setTheme(); // Update the theme when the switch is toggled
              },
            ),
          ),
        ),
        CommonListTile(
          title: 'Forget Passowrd',
          trailing: const Icon(IconlyLight.password),
          onTap: () {},
        ),
        CommonListTile(
          title: 'Sign Out',
          trailing: const Icon(IconlyLight.logout),
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
      height: 120,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                    'https://img.freepik.com/premium-vector/young-man-avatar-character-vector-illustration-design_24877-18514.jpg'),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Hi, ',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Tonmoy',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Text(
                    'tonmoy@gmail.com',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
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
