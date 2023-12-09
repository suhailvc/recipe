import 'package:flutter/material.dart';

class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'challenges',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.tune_outlined,
                ),
              ),
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Card(
                elevation: 0,
                surfaceTintColor: Colors.transparent,
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      width: double.infinity,
                      height: size.height / 1.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: size.height / 4,
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/biriyani.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                top: 35, left: 25, bottom: 20),
                            alignment: Alignment.center,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Ingredient Restriction Challenge',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Choose a specific ingredient (e.g., avocado, lemon, chickpeas) and challenge yourself to create multiple dishes using only that ingredient.",
                                  style: TextStyle(fontSize: 12),
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(12),
                                      bottomRight: Radius.circular(12))),
                              child: Expanded(
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 30,
                                      top: 40,
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                  'assets/images/burger.jpg',
                                                ),
                                                fit: BoxFit.cover),
                                            border: Border.all(
                                                width: 3, color: Colors.white),
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: Colors.black),
                                      ),
                                    ),
                                    Positioned(
                                      left: 45,
                                      top: 40,
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                  'assets/images/chineese food.jpg',
                                                ),
                                                fit: BoxFit.cover),
                                            border: Border.all(
                                                width: 3, color: Colors.white),
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: Colors.white),
                                      ),
                                    ),
                                    Positioned(
                                      left: 55,
                                      top: 40,
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                  'assets/images/pizza.avif',
                                                ),
                                                fit: BoxFit.cover),
                                            border: Border.all(
                                                width: 3, color: Colors.white),
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: Colors.blue),
                                      ),
                                    ),
                                    const Positioned(
                                      left: 95,
                                      top: 45,
                                      child: Text(
                                        'and 10 others',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    Positioned(
                                      left: 200,
                                      top: 30,
                                      child: Container(
                                        height: 50,
                                        width: size.width / 3,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: Colors.green,
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'Join Now',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 30,
                      top: 160,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: const Center(
                          child: Column(
                            children: [
                              Text(
                                '18',
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                              Text('Oct')
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 8,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey.withAlpha(80),
                        ),
                        padding: const EdgeInsets.all(5),
                        child: const Icon(
                          Icons.favorite_border_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
