import 'package:flutter/material.dart';

class CustomIconContainer extends StatelessWidget {
  final Function() onTap;
  final Color color;
  final IconData iconData;
  final Color iconColor;
  const CustomIconContainer({
    super.key,
    required this.onTap,
    required this.color,
    required this.iconData,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 80,
        width: 35,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        child: Icon(
          iconData,
          color: iconColor,
        ),
      ),
    );
  }
}
