import 'package:flutter/material.dart';
import 'package:zikrabyte/core/consatnt.dart';
import 'package:zikrabyte/presentation/recipe_screen/widgets/discover.dart';
import 'package:zikrabyte/presentation/recipe_screen/widgets/recent_recipes.dart';
import 'package:zikrabyte/presentation/recipe_screen/widgets/weekly_pick.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var sizeQuery = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
          padding: const EdgeInsets.all(12),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Explore Recipes',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      width: sizeQuery.height * 0.04,
                      height: sizeQuery.height * 0.04,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.green),
                          borderRadius: BorderRadius.circular(100)),
                      child: const Icon(
                        Icons.add,
                        color: Colors.green,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: sizeQuery.height * 0.04,
                ),
                const WeeklyPick(),
                SizedBox(
                  height: sizeQuery.height * 0.03,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recent Recipes',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'view all',
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  height: sizeQuery.height * 0.18,
                  child: Row(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: 2,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            Map<String, String> currentItem =
                                recentRecipes[index];
                            return RecentRecipes(
                              countryName: currentItem['nation']!,
                              foodName: currentItem['name']!,
                              rating: '4.9',
                              imrUrl: currentItem['imagePath']!,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Discover(),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: double.infinity,
                  height: sizeQuery.height * 0.18,
                  child: Row(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: 2,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            Map<String, String> currentItem =
                                recentRecipes[index];
                            return RecentRecipes(
                              countryName: currentItem['nation']!,
                              foodName: currentItem['name']!,
                              rating: '4.9',
                              imrUrl: currentItem['imagePath']!,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
