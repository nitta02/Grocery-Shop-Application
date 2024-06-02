import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:grocery_shop_app/controller/utils/imagePath.dart';
import 'package:grocery_shop_app/controller/widgets/category.dart';
import 'package:grocery_shop_app/model/categoryModel.dart';
import 'package:grocery_shop_app/model/lists/categroyLists.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List swiperImages = [
      ImagePaths.swiperImg1,
      ImagePaths.swiperImg2,
      ImagePaths.swiperImg3,
    ];

    List<CategoryModel> category = categoryModelList.sublist(0, 5);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Column(
          children: [
            Container(
              height: 150,
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
            Text('CATEGORY'),
            GridView.builder(
              itemCount: category.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 240 / 250,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) => CategoryContainer(
                categoryName: category[index].categoryName,
                imagePath: category[index].categoryImagePath,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
