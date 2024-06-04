import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_shop_app/controller/utils/imagePath.dart';
import 'package:grocery_shop_app/model/class/productModels.dart';
import 'package:grocery_shop_app/model/lists/allProducts.dart';
import 'package:grocery_shop_app/model/lists/categroyLists.dart';
import 'package:grocery_shop_app/model/lists/onSale.dart';
import 'package:grocery_shop_app/view/widgets/categoryContainer.dart';
import 'package:grocery_shop_app/view/widgets/productContainer.dart';

class BodySection extends StatelessWidget {
  const BodySection({super.key});

  @override
  Widget build(BuildContext context) {
    List swiperImages = [
      ImagePaths.swiperImg1,
      ImagePaths.swiperImg2,
      ImagePaths.swiperImg3,
    ];

    List<OnSaleClassModel> onSaleItems = onSaleItemList.sublist(0, 5);
    List<AllProductsModel> allProducts = allProductsItems.sublist(0, 4);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _cardSwiperSection(swiperImages),
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: onSaleItems.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: CategoryContainer(
                  categoryName: categoryModelList[index].categoryName,
                  imagePath: categoryModelList[index].categoryImagePath,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          _onSaleSection(onSaleItems),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Popular Products'),
              TextButton(
                onPressed: () {},
                child: const Text('View All'),
              ),
            ],
          ),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 3 / 4.5,
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
            ),
            itemCount: allProducts.length,
            shrinkWrap: true,
            itemBuilder: (context, index) => ProductContainer(
              imagePath: allProducts[index].itemImagePath,
              productName: allProducts[index].itmeName,
              price: allProducts[index].price,
            ),
          ),
        ],
      ),
    );
  }

  Row _onSaleSection(List<OnSaleClassModel> onSaleItems) {
    return Row(
      children: [
        RotatedBox(
          quarterTurns: -1,
          child: Row(
            children: [
              Text(
                'On Sale'.toUpperCase(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.red,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              const Icon(
                IconlyBold.discount,
                color: Colors.red,
              ),
            ],
          ),
        ),
        Flexible(
          child: SizedBox(
            height: 140,
            child: ListView.builder(
              itemCount: onSaleItems.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 120,
                      width: 210,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.black12,
                          )),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(onSaleItems[index]
                                              .onSaleImagePath))),
                                ),
                                Text(onSaleItems[index].onSaleItme),
                              ],
                            ),
                          ),
                          const RotatedBox(
                            quarterTurns: -1,
                            child: Divider(
                              color: Colors.black12,
                              thickness: 5,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                const Text(
                                  '1 KG',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(IconlyLight.bag)),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(IconlyLight.heart)),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      '\$0.99',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '\$2.99',
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 12,
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Container _cardSwiperSection(List<dynamic> swiperImages) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Card(
        child: Swiper(
          allowImplicitScrolling: true,
          containerHeight: 100,
          containerWidth: 100,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(
                        swiperImages[index],
                      ))),
            );
          },
          // autoplay: true,
          itemCount: swiperImages.length,
          pagination: const SwiperPagination(
            builder: DotSwiperPaginationBuilder(
              size: 5,
              space: 5,
              activeColor: Colors.white,
            ),
          ),
          // control: SwiperControl(),
        ),
      ),
    );
  }
}
