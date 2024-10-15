// ignore_for_file: file_names

import 'package:grocery_shop_app/core/utils/imagePath.dart';
import 'package:grocery_shop_app/core/model/categoryClass.dart';
import 'package:grocery_shop_app/core/model/productModels.dart';

List<CategoryModel> categoryModelList = [
  CategoryModel(
    categoryName: 'Fruits',
    categoryImagePath: ImagePaths.groceryCat1,
    items: <ProductsModel>[
      ProductsModel(
        itemName: 'Apple',
        price: 10.0,
        itemImagePath: 'assets/icons/items/fruits/001-apple.png',
      ),
      ProductsModel(
        itemName: 'strawberry',
        price: 5.0,
        itemImagePath: 'assets/icons/items/fruits/002-strawberry.png',
      ),
      ProductsModel(
        itemName: 'orange',
        price: 5.0,
        itemImagePath: 'assets/icons/items/fruits/003-orange.png',
      ),
      ProductsModel(
        itemName: 'watermelon',
        price: 5.0,
        itemImagePath: 'assets/icons/items/fruits/004-watermelon.png',
      ),
      ProductsModel(
        itemName: 'passion-fruit',
        price: 5.0,
        itemImagePath: 'assets/icons/items/fruits/006-passion-fruit.png',
      ),
      ProductsModel(
        itemName: 'Banana',
        price: 5.0,
        itemImagePath: 'assets/icons/items/fruits/007-bananas.png',
      ),
    ],
  ),
  CategoryModel(
    categoryName: 'Harvest',
    categoryImagePath: ImagePaths.groceryCat2,
    items: <ProductsModel>[
      ProductsModel(
        itemName: 'Apple',
        price: 10.0,
        itemImagePath: 'assets/images/apple.png',
      ),
      ProductsModel(
        itemName: 'Banana',
        price: 5.0,
        itemImagePath: 'assets/images/banana.png',
      ),
    ],
  ),
  CategoryModel(
    categoryName: 'Nuts',
    categoryImagePath: ImagePaths.groceryCat3,
    items: <ProductsModel>[
      ProductsModel(
        itemName: 'Apple',
        price: 10.0,
        itemImagePath: 'assets/images/apple.png',
      ),
      ProductsModel(
        itemName: 'Banana',
        price: 5.0,
        itemImagePath: 'assets/images/banana.png',
      ),
    ],
  ),
  CategoryModel(
    categoryName: 'Mortar',
    categoryImagePath: ImagePaths.groceryCat4,
    items: <ProductsModel>[
      ProductsModel(
        itemName: 'Apple',
        price: 10.0,
        itemImagePath: 'assets/images/apple.png',
      ),
      ProductsModel(
        itemName: 'Banana',
        price: 5.0,
        itemImagePath: 'assets/images/banana.png',
      ),
    ],
  ),
  CategoryModel(
    categoryName: 'Juice',
    categoryImagePath: ImagePaths.groceryCat5,
    items: <ProductsModel>[
      ProductsModel(
        itemName: 'Apple',
        price: 10.0,
        itemImagePath: 'assets/images/apple.png',
      ),
      ProductsModel(
        itemName: 'Banana',
        price: 5.0,
        itemImagePath: 'assets/images/banana.png',
      ),
    ],
  ),
  CategoryModel(
    categoryName: 'Soft Drinks',
    categoryImagePath: ImagePaths.groceryCat6,
    items: <ProductsModel>[
      ProductsModel(
        itemName: 'Apple',
        price: 10.0,
        itemImagePath: 'assets/images/apple.png',
      ),
      ProductsModel(
        itemName: 'Banana',
        price: 5.0,
        itemImagePath: 'assets/images/banana.png',
      ),
    ],
  ),
  CategoryModel(
    categoryName: 'Liquor',
    categoryImagePath: ImagePaths.groceryCat7,
    items: <ProductsModel>[
      ProductsModel(
        itemName: 'Apple',
        price: 10.0,
        itemImagePath: 'assets/images/apple.png',
      ),
      ProductsModel(
        itemName: 'Banana',
        price: 5.0,
        itemImagePath: 'assets/images/banana.png',
      ),
    ],
  ),
];
