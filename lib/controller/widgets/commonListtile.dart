import 'package:flutter/material.dart';

class CommonListTile extends StatelessWidget {
  final String title;
  final String? subtitle;
  final IconData? iconData;
  final Function()? onTap;
  const CommonListTile(
      {super.key,
      required this.title,
      this.subtitle,
      this.iconData,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
      ),
      subtitle: Text(
        subtitle ?? "",
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w200,
        ),
      ),
      trailing: Icon(iconData),
      onTap: onTap,
    );
  }
}
