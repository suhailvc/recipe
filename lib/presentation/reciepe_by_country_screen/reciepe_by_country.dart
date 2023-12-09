import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zikrabyte/core/consatnt.dart';
import 'package:zikrabyte/presentation/explore/widgets/category_card.dart';
import 'package:zikrabyte/presentation/food_recipe/food_reciepe.dart';

class ReciepeByCountryscreen extends StatelessWidget {
  const ReciepeByCountryscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(FontAwesomeIcons.arrowLeft)),
        title: const Text(
          "Korean",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.builder(
          // itemCount: recipeCategorieslist.length,
          itemCount: foodByCountry.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 1 / 0.6),
          itemBuilder: (context, index) {
            Map<String, String> currentItem = foodByCountry[index];
            return InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FoodReciepe()),
                );
              },
              child: CategoryCard(
                name: currentItem['name']!,
                imrUrl: currentItem['imagePath']!,
              ),
            );
          },
        ),
      ),
    );
  }
}
