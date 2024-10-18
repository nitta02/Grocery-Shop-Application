import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_shop_app/core/utils/lists/categroyLists.dart';
import 'package:grocery_shop_app/presentation/widgets/appBar/globalAppBar.dart';
import 'package:grocery_shop_app/presentation/widgets/categoryContainer.dart';

class CatagoryPage extends StatelessWidget {
  const CatagoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GlobalAppBar(
              iconData: IconlyLight.arrowLeft,
              onTap: () {
                Navigator.pop(context);
              },
              text: "CATEGORY",
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: categoryModelList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 240 / 250,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) => Card(
                  child: CategoryContainer(
                    category: categoryModelList[index],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
