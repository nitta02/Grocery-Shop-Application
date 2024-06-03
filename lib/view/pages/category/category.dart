import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_shop_app/model/lists/categroyLists.dart';
import 'package:grocery_shop_app/view/widgets/categoryContainer.dart';

class CatagoryPage extends StatelessWidget {
  const CatagoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  suffixIcon: const Icon(IconlyLight.search),
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black12,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Categories',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
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
                  itemBuilder: (context, index) => CategoryContainer(
                    categoryName: categoryModelList[index].categoryName,
                    imagePath: categoryModelList[index].categoryImagePath,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
