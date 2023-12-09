import 'package:flutter/material.dart';
import 'package:zikrabyte/presentation/forum_screen/challenges/challenges_screen.dart';
import 'package:zikrabyte/presentation/forum_screen/featured_topics/featured_topics.dart';
import 'package:zikrabyte/presentation/forum_screen/sale/sale.dart';

class ForumScreen extends StatelessWidget {
  const ForumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Forum',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.green),
                      borderRadius: BorderRadius.circular(
                        100,
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.green,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.green.withOpacity(0.1),
                ),
                child: TabBar(
                  tabs: const [
                    Tab(
                      text: 'Featured Topics',
                    ),
                    Tab(text: 'Challenges'),
                    Tab(text: 'Sale'),
                  ],
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabAlignment: TabAlignment.fill,
                  labelStyle: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w600),
                  splashBorderRadius: BorderRadius.circular(50),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.green,
                  ),
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    FeaturedTopicsScreen(),
                    ChallengesScreen(),
                    SaleScreen(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
