import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_shop_app/view/widgets/CommonListtile.dart';

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          child: Column(
            children: [
              ListTile(
                title: RichText(
                  text: const TextSpan(
                      text: 'Hi,',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.green,
                      ),
                      children: [
                        TextSpan(
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                          text: 'Tonmoy',
                        )
                      ]),
                ),
                subtitle: const Text('tonmoy@gmail.com'),
                trailing: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/premium-vector/young-man-avatar-character-vector-illustration-design_24877-18514.jpg'),
                ),
              ),
              const Divider(
                color: Colors.green,
              ),
              Column(
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
              ),
            ],
          ),
        ),
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
            print(value);
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
