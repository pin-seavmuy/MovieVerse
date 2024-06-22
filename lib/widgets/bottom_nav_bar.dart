import 'package:flutter/material.dart';

import '../screens/homescreen.dart';
import '../screens/news_and_hot.dart';
// import '../screens/search_screen.dart';
import '../screens/setting_screen.dart';
import '../screens/watchList_screen.dart';
class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        bottomNavigationBar: Container(
          color: const Color.fromARGB(255, 255, 255, 255),
          height: 70,
          child: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.bookmark),
                text: "WatchList",
              ),
              Tab(
                icon: Icon(Icons.photo_library_outlined),
                text: "News",
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: "Settings",
              ),
            ],
            unselectedLabelColor: Color.fromARGB(255, 41, 40, 40),
            labelColor: Color.fromARGB(255, 228, 6, 99),
            indicatorColor: Colors.transparent,
          ),
        ),
        body: const TabBarView(
          children: [
            HomeScreen(),
            // SearchScreen(),
            WatchListScreen(),
            UpcomingScreen(),
            SettingScreen(),
          ],
        ),
      ),
    );
  }
}
