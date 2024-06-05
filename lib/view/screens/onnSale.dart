import 'package:flutter/material.dart';
import 'package:grocery_shop_app/controller/utils/imagePath.dart';
import 'package:grocery_shop_app/model/class/productModels.dart';
import 'package:grocery_shop_app/model/lists/onSale.dart';
import 'package:grocery_shop_app/view/widgets/productContainer.dart';

class OnSaleScreen extends StatelessWidget {
  const OnSaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<OnSaleClassModel> onSaleItems = onSaleItemList.sublist(0, 5);
    bool _cartEmpty = false;

    return Scaffold(
      appBar: AppBar(),
      body: _cartEmpty
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
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 4 / 5,
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              itemCount: onSaleItems.length,
              shrinkWrap: true,
              itemBuilder: (context, index) => ProductContainer(
                imagePath: onSaleItems[index].onSaleImagePath,
                productName: onSaleItems[index].onSaleItme,
                price: onSaleItems[index].price,
              ),
            ),
    );
  }
}
