import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeeklyPick extends StatelessWidget {
  const WeeklyPick({super.key});

  @override
  Widget build(BuildContext context) {
    var sizeQuery = MediaQuery.of(context).size;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: sizeQuery.height * 0.3,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
          image: AssetImage(
            'assets/images/brazilian.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Weekly pick',
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                  Text(
                    "This Italian pasta and steak will \nwarm up the faintest of hearts.",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  )
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(10),
                child: const Center(
                  child: Icon(
                    FontAwesomeIcons.play,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
