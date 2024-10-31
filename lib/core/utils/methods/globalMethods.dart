import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class Globalmethods {
  static Future<void> showSignOutDialog(BuildContext context, {
required this.title,
  }) async {
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
            Text(title,),
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
