import 'package:flutter/material.dart';
import 'package:grocery_shop_app/core/theme/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Themeprovider extends ChangeNotifier {
  ThemeData _themeData = lightTheme;
  bool _isDarkMode = false;

  ThemeData get themeData => _themeData;
  bool get isDark => _isDarkMode;

  Themeprovider() {
    _loadThemeFromPreferences();
  }

  void setTheme() {
    if (_themeData == lightTheme) {
      _themeData = darkTheme;
      _isDarkMode = true;
    } else {
      _themeData = lightTheme;
      _isDarkMode = false;
    }
    saveTheme();
    notifyListeners();
  }

  void saveTheme() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDarkMode', _isDarkMode);
  }

  // Load the theme preference on app startup
  void _loadThemeFromPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    _isDarkMode = prefs.getBool('isDarkMode') ?? false;
    if (_isDarkMode) {
      _themeData = darkTheme;
    } else {
      _themeData = lightTheme;
    }
    notifyListeners();
  }
}
