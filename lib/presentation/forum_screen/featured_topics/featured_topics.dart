import 'package:flutter/material.dart';

class FeaturedTopicsScreen extends StatelessWidget {
  const FeaturedTopicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.only(bottom: 5),
          width: MediaQuery.of(context).size.width,
          height: 260,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Container(
                height: size.height * 0.79,
                width: size.width / 5.9,
                padding: const EdgeInsets.all(10),
                child: const Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile.jpg'),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: size.height * 0.3,
                width: size.width / 1.4,
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text('Bellington'),
                        const Text('@bellingcook'),
                        SizedBox(
                          width: size.width / 5.5,
                        ),
                        const Icon(Icons.favorite_border_rounded),
                      ],
                    ),
                    const Row(
                      children: [
                        Text('1 hour ago'),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(1),
                      child: const Text(
                        "Rise and shine, pancake lovers! 🌞🥞 Today, I'm sharing a recipe that'll turn your breakfast into a scrumptious delight! Behold, the Fluffy Pancakes that are sure to make your taste buds dance with joy! 💃🕺",
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    Container(
                      height: size.height * 0.11,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/biriyani.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                        color: Colors.blueAccent,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '❤️ 180 likes',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          ' 120 replies',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          '300 views',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
