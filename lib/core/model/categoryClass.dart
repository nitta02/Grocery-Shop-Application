//CLASS MODE FOR Categoryies--------------------------
// ignore_for_file: file_names

import 'package:grocery_shop_app/core/model/productModels.dart';

class CategoryModel {
  final String categoryName;
  final String categoryImagePath;
  final List<ProductsModel> items;

  CategoryModel({
    required this.categoryName,
    required this.categoryImagePath,
    required this.items,
  });
}
