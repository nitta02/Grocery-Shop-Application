// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GlobalNavigator {
  static navigateTo({
    required BuildContext context,
    required String routeName,
  }) {
    Navigator.pushNamed(context, routeName);
  }
}
