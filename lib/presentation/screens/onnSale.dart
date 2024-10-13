// ignore_for_file: prefer_const_constructors, dead_code, file_names, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:grocery_shop_app/core/controller/utils/imagePath.dart';
import 'package:grocery_shop_app/core/model/class/productModels.dart';
import 'package:grocery_shop_app/core/model/lists/onSale.dart';
import 'package:grocery_shop_app/presentation/widgets/appBar/commonAppBar.dart';
import 'package:grocery_shop_app/presentation/widgets/productContainer.dart';

class OnSaleScreen extends StatelessWidget {
  const OnSaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductsModel> onSaleItems = onSaleItemList.sublist(0, 5);
    bool _cartEmpty = false;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CommonAppBar(
              text: 'ON SALE',
              hintText: 'Search for products',
            ),
            _cartEmpty
                ? Center(
                    child: Column(
                      children: [
                        Image.asset(ImagePaths.emptyBoxImage),
                        Text('No Item is on Sale'),
                      ],
                    ),
                  )
                : GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 4 / 5,
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                    ),
                    itemCount: onSaleItems.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => ProductContainer(
                      productsModel: onSaleItems[index],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
