import 'package:flutter/material.dart';

class CommonListTile extends StatelessWidget {
  final String title;
  final String? subtitle;
  final IconData? iconData;

  final Function()? onTap;
  const CommonListTile({
    super.key,
    required this.title,
    this.iconData,
    this.onTap,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Icon(iconData),
      subtitle: Text(
        subtitle ?? '',
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w200,
        ),
      ),
      title: Text(title),
      onTap: onTap,
    );
  }
}
