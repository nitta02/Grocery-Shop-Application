//CLASS MODE FOR Categoryies--------------------------
// ignore_for_file: file_names

class CategoryModel {
  final String categoryName;
  final String categoryImagePath;

  CategoryModel({
    required this.categoryName,
    required this.categoryImagePath,
  });
}

//Model Class for OnSale Items-----------------------
class OnSaleClassModel {
  final String onSaleItme;
  final String onSaleImagePath;
  final double price;

  OnSaleClassModel({
    required this.onSaleImagePath,
    required this.onSaleItme,
    required this.price,
  });
}

//CLASS MODEL FOR ALL PRODUCTS----------------------------
class AllProductsModel {
  final String itmeName;
  final String itemImagePath;
  final double price;
  int quantity;

  AllProductsModel({
    required this.price,
    required this.itmeName,
    required this.itemImagePath,
    this.quantity = 1,
  });
}
