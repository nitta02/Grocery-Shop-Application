// Light Theme
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.light(
    background: Colors.grey.shade100,
    primary: Colors.grey.shade500,
    secondary: Colors.grey.shade500,
    inversePrimary: Colors.grey.shade800,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor:
        Colors.grey.shade500, // AppBar background color for light theme
    foregroundColor: Colors.white, // AppBar text color
  ),
);

// Dark Theme
ThemeData darkTheme = ThemeData(
  colorScheme: ColorScheme.dark(
    background: Colors.grey.shade900,
    primary: Colors.grey.shade600,
    secondary: Colors.grey.shade800,
    inversePrimary: Colors.grey.shade200,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor:
        Colors.grey.shade600, // AppBar background color for dark theme
    foregroundColor: Colors.white, // AppBar text color
  ),
);
