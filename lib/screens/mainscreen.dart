import 'dart:developer' as developer;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multi_learn/screens/dashboardscreen.dart';
import 'package:multi_learn/screens/profilescreen.dart';
import 'package:multi_learn/screens/searchforpeople.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int bottomSelectedIndex = 1;
  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      const BottomNavigationBarItem(
        icon: Icon(Icons.person_search),
        label: 'Search for people',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.perm_identity),
        label: 'Profile',
      ),
    ];
  }

  PageController pageController = PageController(
    initialPage: 1,
    keepPage: true,
  );

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 400), curve: Curves.easeOutQuad);
    });
  }

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        SearchForPeopleScreen(),
        DashBoardScreen(),
        ProfileScreen(),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    developer.log("Dashboard rebuild");
    return Scaffold(
      body: buildPageView(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xfff627499),
        currentIndex: bottomSelectedIndex,
        items: buildBottomNavBarItems(),
        onTap: (index) {
          bottomTapped(index);
        },
      ),
    );
  }
}
