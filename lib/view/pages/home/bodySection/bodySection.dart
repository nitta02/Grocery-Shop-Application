import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:grocery_shop_app/controller/utils/imagePath.dart';
import 'package:grocery_shop_app/model/class/categoryModel.dart';
import 'package:grocery_shop_app/model/class/onSaleClass.dart';
import 'package:grocery_shop_app/model/lists/categroyLists.dart';
import 'package:grocery_shop_app/model/lists/onSale.dart';
import 'package:grocery_shop_app/view/widgets/categoryContainer.dart';

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

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 170,
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
          ),
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
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              itemCount: onSaleItems.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: CategoryContainer(
                  categoryName: onSaleItems[index].onSaleItme,
                  imagePath: onSaleItems[index].onSaleImagePath,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
