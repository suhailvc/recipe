// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SocialMediaIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color color;
  const SocialMediaIcon({
    Key? key,
    required this.icon,
    required this.size,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 48,
      height: 48,
      padding:const EdgeInsets.symmetric(vertical: 10,horizontal: 12),
        decoration: BoxDecoration(
          border: Border.all(width: 0.5),
          borderRadius: BorderRadius.circular(200)
        ),
        child: Icon(icon,size: size,color: color,),
    );
  }
}
