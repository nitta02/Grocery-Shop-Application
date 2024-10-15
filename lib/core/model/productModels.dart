//CLASS MODEL FOR ALL PRODUCTS----------------------------
// ignore_for_file: file_names

class ProductsModel {
  final String itemName;
  final String itemImagePath;
  final double price;
  int quantity;

  ProductsModel({
    required this.price,
    required this.itemName,
    required this.itemImagePath,
    this.quantity = 1,
  });
}
