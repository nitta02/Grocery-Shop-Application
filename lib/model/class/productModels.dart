//CLASS MODEL FOR ALL PRODUCTS----------------------------
// ignore_for_file: file_names

class ProductsModel {
  final String itmeName;
  final String itemImagePath;
  final double price;
  int quantity;

  ProductsModel({
    required this.price,
    required this.itmeName,
    required this.itemImagePath,
    this.quantity = 1,
  });
}
