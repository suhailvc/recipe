import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String name;
  final String imrUrl;
  const CategoryCard({super.key,required this.name,
    required this.imrUrl,});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
            image:AssetImage(imrUrl),
            fit: BoxFit.cover,),
        color: Colors.green,
      ),
      child: Center(
        child: Text(
          name,
          style:const TextStyle(fontSize: 16, color: Colors.white,fontWeight: FontWeight.w600,),
        ),
      ),
    );
  }
}