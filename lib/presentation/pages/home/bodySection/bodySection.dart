// ignore_for_file: file_names

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_shop_app/core/utils/lists/categroyLists.dart';
import 'package:grocery_shop_app/core/utils/imagePath.dart';
import 'package:grocery_shop_app/core/model/productModels.dart';
import 'package:grocery_shop_app/core/utils/lists/allProducts.dart';
import 'package:grocery_shop_app/core/utils/lists/onSale.dart';
import 'package:grocery_shop_app/routes/appRoutes.dart';
import 'package:grocery_shop_app/routes/globalNavigator.dart';
import 'package:grocery_shop_app/presentation/widgets/customText.dart';
import 'package:grocery_shop_app/presentation/widgets/productContainer.dart';

class BodySection extends StatelessWidget {
  const BodySection({super.key});

  @override
  Widget build(BuildContext context) {
    List swiperImages = [
      ImagePaths.swiperImg1,
      ImagePaths.swiperImg2,
      ImagePaths.swiperImg3,
    ];

    List<ProductsModel> onSaleItems = onSaleItemList.sublist(0, 5);
    List<ProductsModel> allProducts = allProductsItems.sublist(0, 4);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _cardSwiperSection(swiperImages),
          _categoryView(),
          _onSaleSection(onSaleItems, context),
          _popularProductSection(allProducts, context),
        ],
      ),
    );
  }

  Column _categoryView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        CustomText(
          text: 'CATEGORY',
          fontWeight: FontWeight.bold,
          fontSize: 16,
          fontColor: Colors.black,
        ),
        SizedBox(
          height: 100, // Adjust this value based on your design
          child: ListView.builder(
            itemCount: 6, // 5 categories + 1 "View All"
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              if (index < 5) {
                // Category item
                return Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 10), // Spacing between items
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Center vertically
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                              categoryModelList[index].categoryImagePath,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                          height: 5), // Spacing between image and text
                      Text(categoryModelList[index].categoryName),
                    ],
                  ),
                );
              } else {
                // "View All" button
                return GestureDetector(
                  onTap: () {
                    GlobalNavigator.navigateTo(
                        context: context, routeName: AppRoutes.categoryScreen);
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10), // Spacing to match category items
                    child: Column(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // Center vertically
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.greenAccent,
                              width: 2,
                            ),
                          ),
                          child: const Icon(
                            Icons.arrow_forward,
                            color: Colors.greenAccent,
                          ),
                        ),
                        const SizedBox(
                            height: 5), // Spacing between icon and text
                        const Text('View All'),
                      ],
                    ),
                  ),
                );
              }
            },
          ),
        ),
      ],
    );
  }

  Column _popularProductSection(
      List<ProductsModel> allProducts, BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: 'POPULAR PRODUCTS',
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontColor: Colors.black,
            ),
            TextButton(
              onPressed: () {
                GlobalNavigator.navigateTo(
                    context: context, routeName: AppRoutes.allProductScreen);
              },
              child: CustomText(
                text: 'View All',
                fontWeight: FontWeight.bold,
                fontSize: 14,
                fontColor: Colors.green,
              ),
            ),
          ],
        ),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 4 / 5,
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
          itemCount: allProducts.length,
          shrinkWrap: true,
          itemBuilder: (context, index) => ProductContainer(
            productsModel: allProducts[index],
          ),
        ),
      ],
    );
  }

  Column _onSaleSection(List<ProductsModel> onSaleItems, BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: 'POPULAR YOU NEED',
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontColor: Colors.black,
            ),
            TextButton(
              onPressed: () {
                GlobalNavigator.navigateTo(
                    context: context, routeName: AppRoutes.onSaleScreen);
              },
              child: CustomText(
                text: 'View All',
                fontWeight: FontWeight.bold,
                fontSize: 14,
                fontColor: Colors.green,
              ),
            ),
          ],
        ),
        Row(
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
                                              image: AssetImage(
                                                  onSaleItems[index]
                                                      .itemImagePath))),
                                    ),
                                    Text(onSaleItems[index].itemName),
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
                                            icon:
                                                const Icon(IconlyLight.heart)),
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
                                            decoration:
                                                TextDecoration.lineThrough,
                                          ),
                                        ),
                                      ],
                                    ),
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
          autoplay: true,
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
