import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zikrabyte/presentation/explore/explore.dart';
import 'package:zikrabyte/presentation/forum_screen/forum_screen.dart';
import 'package:zikrabyte/presentation/grocery_screen/grocery_screen.dart';
import 'package:zikrabyte/presentation/profile/profile.dart';
import 'package:zikrabyte/presentation/recipe_screen/recipe_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;
  final List<Widget> pages =const [
    RecipeScreen(),
    GroceryScreen(),
    Explore(),
    ForumScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          setState(() {
            currentIndex = 2;
          });
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        child: const Icon(
          FontAwesomeIcons.magnifyingGlass,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        selectedFontSize: 13,
        iconSize: 20,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.food_bank_rounded,
              ),
              label: 'Recipes'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu_open_rounded,
              ),
              label: 'Grocery'),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.a,
              ),
              label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.message,
              ),
              label: 'Forum'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_outlined,
              ),
              label: 'Profile'),
        ],
      ),
    );
  }
}
