import 'package:flutter/material.dart';

class RecentRecipes extends StatelessWidget {
  final String countryName;
  final String foodName;
  final String rating;
  final String imrUrl;
  const RecentRecipes({super.key,required this.countryName,
    required this.foodName,
    required this.rating,
    required this.imrUrl,});

  @override
  Widget build(BuildContext context) {
   return Container(
      margin: const EdgeInsets.only(left: 10),
      width: 161,
      height: 80,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                ),
                width: 30,
                height: 30,
                child: const Icon(
                  Icons.favorite_outline_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              Text(
                countryName,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                foodName,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                rating,
                style: const TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}