import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zikrabyte/core/consatnt.dart';
import 'package:zikrabyte/presentation/explore/widgets/category_card.dart';
import 'package:zikrabyte/presentation/reciepe_by_country_screen/reciepe_by_country.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Search',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  fillColor: Colors.grey.withOpacity(0.1),
                  filled: true,
                  labelText: 'Search anything...',
                  prefixIcon: const Icon(FontAwesomeIcons.magnifyingGlass),
                  suffixIcon: const Icon(FontAwesomeIcons.filter),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide.none)),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Categories',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: 1 / 0.6),
                itemBuilder: (context, index) {
                  Map<String, String> currentItem = categories[index];
                  return InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>const ReciepeByCountryscreen()
                        ),
                     );
                    },
                    child: CategoryCard(
                      name:currentItem['name']!,
                      imrUrl: currentItem['imagePath']!,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}