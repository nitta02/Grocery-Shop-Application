// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
  background: Colors.grey.shade300,
  primary: Colors.grey.shade500,
  secondary: Colors.grey.shade500,
  inversePrimary: Colors.grey.shade800,
));

ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.dark(
  background: Colors.grey.shade900,
  primary: Colors.grey.shade600,
  secondary: Colors.grey.shade800,
  inversePrimary: Colors.grey.shade300,
));
