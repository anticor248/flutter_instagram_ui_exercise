import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/reels_screen.dart';
import 'screens/search_screen.dart';
import 'screens/shop_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;

  List<Widget> _pageList = <Widget>[
    HomeScreen(),
    SearchScreen(),
    ReelsScreen(),
    ShopScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _pageIndex,
        children: _pageList,
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GNav(
            onTabChange: (value) {
              setState(() {
                _pageIndex = value;
              });
            },
            activeColor: Colors.black, // selected icon and text color

            tabBackgroundColor:
                Colors.grey.shade300, // selected tab background color

            color: Colors.black, // unselected icon color

            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            tabs: [
              GButton(icon: Icons.home_outlined),
              GButton(icon: Icons.search),
              GButton(icon: Icons.play_circle_outline_rounded),
              GButton(icon: Icons.shop_outlined),
              GButton(icon: Icons.person_outline),
            ],
          ),
        ),
      ),
    );
  }
}
