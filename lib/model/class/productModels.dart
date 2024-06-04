//CLASS MODE FOR Categoryies--------------------------
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

  OnSaleClassModel({
    required this.onSaleImagePath,
    required this.onSaleItme,
  });
}

//CLASS MODEL FOR ALL PRODUCTS----------------------------
class AllProductsModel {
  final String itmeName;
  final String itemImagePath;
  final double price;

  AllProductsModel({
    required this.price,
    required this.itmeName,
    required this.itemImagePath,
  });
}
