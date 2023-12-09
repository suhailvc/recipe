import 'package:flutter/material.dart';

class GroceryCard extends StatelessWidget {
  final String mealName;
  final String ingredients;
  final String imgUrl;
  final int index;
  const GroceryCard(
      {super.key,
      required this.mealName,
      required this.ingredients,
      required this.imgUrl,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black26,
      elevation: 3,
      surfaceTintColor: Colors.transparent,
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.all(5),
        child: Row(
          children: [
            Container(
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    imgUrl,
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12),
                color: Colors.green,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        mealName,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100)),
                          child: index > 2
                              ? const Icon(
                                  Icons.check,
                                  color: Colors.green,
                                )
                              : const SizedBox()),
                    ],
                  ),
                  Text(
                    ingredients,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
