import 'package:flutter/material.dart';
import 'package:music_app/models/artist_model.dart';
import 'package:music_app/screens/library_screen.dart';
import 'package:music_app/screens/searchScreen.dart';
import 'package:music_app/screens/trending_screen.dart';

import 'explore_screen.dart';

class  MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentBNBIndex = 0;
  List<Widget> screens = [
    ExploreScreen(),
    TrendingScreen(),
    SearchScreen(),
    LibraryScreen(),
    Scaffold()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFFFF2D55),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentBNBIndex,
        onTap: (int x) {
          setState(() {
            _currentBNBIndex = x;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.music_note), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_fire_department), label: 'Trending'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_music), label: 'Library'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
        ],
      ),
      body: screens[_currentBNBIndex],
    );
  }
}
