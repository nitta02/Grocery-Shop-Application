import 'package:flutter/material.dart';
import 'package:grocery_shop_app/presentation/widgets/appBar/globalAppBar.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GlobalAppBar(
            text: "MESSAGES",
          ),
          Center(
            child: Text('No Message'),
          ),
        ],
      ),
    );
  }
}
