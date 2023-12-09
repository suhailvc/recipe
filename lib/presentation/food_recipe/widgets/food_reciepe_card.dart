import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FoodRecipeCard extends StatelessWidget {

  final String foodName;
  final String chef;
  final String imrUrl;
  const FoodRecipeCard({
    super.key,
 
    required this.foodName,
    required this.chef,
    required this.imrUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        // width: 161,
        // height: 80,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(imrUrl),
            fit: BoxFit.cover,
          ),
          color: Colors.green,
        ),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  FontAwesomeIcons.fileWaveform,
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                  foodName,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  chef,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                const Text(
                  '⭐ 4.9',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ));
  }
}
