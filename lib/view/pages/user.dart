import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_shop_app/controller/widgets/commonListtile.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

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
                    iconData: Icons.arrow_forward_ios,
                    onTap: () {},
                  ),
                  CommonListTile(
                    title: 'Orders',
                    iconData: IconlyLight.bag,
                    onTap: () {},
                  ),
                  CommonListTile(
                    title: 'Wishlist',
                    iconData: Icons.favorite,
                    onTap: () {},
                  ),
                  CommonListTile(
                    title: 'Viewed',
                    iconData: Icons.remove_red_eye_outlined,
                    onTap: () {},
                  ),
                  CommonListTile(
                    title: 'Theme Mode',
                    iconData: Icons.light_mode,
                    onTap: () {},
                  ),
                  CommonListTile(
                    title: 'Forget Passowrd',
                    iconData: IconlyLight.password,
                    onTap: () {},
                  ),
                  CommonListTile(
                    title: 'Sign Out',
                    iconData: Icons.logout_rounded,
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
