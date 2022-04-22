import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:loginpage/soil.dart';
import 'package:loginpage/tips.dart';
import 'package:loginpage/weather.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'about_us.dart';
import 'helper.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  int _currentIndex = 0;
  PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: const <Widget>[
            Weather(),
            SoilList(),
            Helper(),
            Tips(),
            AboutUs(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Colors.green,
        selectedIndex: _currentIndex,
        showElevation: true,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              activeColor: Colors.white,
              inactiveColor: Colors.black,
              title: const Text('Weather'),
              icon: const Icon(FontAwesomeIcons.cloudSunRain)
          ),
          BottomNavyBarItem(
              activeColor: Colors.white,
              inactiveColor: Colors.black,
              title: const Text('SoilType'),
              icon: const Icon(FontAwesomeIcons.seedling)
          ),
          BottomNavyBarItem(
              activeColor: Colors.white,
              inactiveColor: Colors.black,
              title: const Text('FarmEasy'),
              icon: const Icon(Icons.chat_bubble)
          ),
          BottomNavyBarItem(
              activeColor: Colors.white,
              inactiveColor: Colors.black,
              title: const Text('Tips'),
              icon: const Icon(FontAwesomeIcons.list)
          ),
          BottomNavyBarItem(
              activeColor: Colors.white,
              inactiveColor: Colors.black,
              title: const Text('Profile'),
              icon: const Icon(Icons.person)
          ),
        ],
      ),
    );
  }
}
