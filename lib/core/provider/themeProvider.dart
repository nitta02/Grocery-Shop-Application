import 'package:flutter/material.dart';
import 'package:grocery_shop_app/core/theme/theme.dart';

class Themeprovider extends ChangeNotifier {
  ThemeData _themeData = lightTheme;

  ThemeData get themeData => _themeData;

  bool get isDark => _themeData == darkTheme;

  void setTheme() {
    if (_themeData == lightTheme) {
      _themeData = darkTheme;
    } else {
      _themeData = lightTheme;
    }
    notifyListeners();
  }
}
