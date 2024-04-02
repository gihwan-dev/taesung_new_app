import 'package:flutter/material.dart';
import 'package:taesung_app/consts/bottom_nav_const.dart';
import 'package:taesung_app/pages/home_alarm_page.dart';
import 'package:taesung_app/pages/home_main_page.dart';
import 'package:taesung_app/pages/home_map_page.dart';
import 'package:taesung_app/pages/home_setting_page.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;
  final List<Widget> _pages = [
    const HomeMainPage(),
    const HomeMapPage(),
    const HomeAlarmPage(),
    const HomeSettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(currentIndex),
      body: _pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: bottomNavIconList()),
    );
  }

  AppBar? _buildAppBar(int index) {
    switch (index) {
      case 2:
        return AppBar(
          title: const Text('알람 데이터'),
        );
      case 3:
        return AppBar(
          title: const Text('설정'),
        );
      default:
        return null;
    }
  }
}
