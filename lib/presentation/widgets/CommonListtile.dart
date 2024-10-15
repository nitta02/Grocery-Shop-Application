// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class CommonListTile extends StatelessWidget {
  final String title;
  final String? subtitle;
  Widget? trailing;
  Function()? onTap;

  CommonListTile({
    super.key,
    required this.title,
    this.trailing,
    this.onTap,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: trailing,
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
