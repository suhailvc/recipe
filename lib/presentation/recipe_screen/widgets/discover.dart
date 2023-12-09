import 'package:flutter/material.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.green.withOpacity(0.1)),
      child: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  left: 50,
                  top: 25,
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/sushi.jpg'),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(width: 3, color: Colors.white),
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.red),
                  ),
                ),
                Positioned(
                  left: 30,
                  top: 25,
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/soup.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(width: 3, color: Colors.white),
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.blue),
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 25,
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/pizza.avif',
                          ),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(width: 3, color: Colors.white),
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          const Row(
            children: [Text('Discover more dishes \nby exploring what’s new')],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_circle_right_sharp,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
