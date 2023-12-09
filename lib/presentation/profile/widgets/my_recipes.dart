import 'package:flutter/material.dart';

class MyRecipescard extends StatelessWidget {
  const MyRecipescard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My Recipes',
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            height: 150,
            child: Row(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(left: 10),
                        width: 161,
                        height: 80,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/brazilian.jpg'),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.green,
                        ),
                        child: const Column(
                          children: [
                            Spacer(),
                            Row(
                              children: [
                                Text(
                                  "",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            ),
                            Text(
                              '27 min',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
