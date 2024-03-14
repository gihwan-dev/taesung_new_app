import 'package:flutter/material.dart';

List<BottomNavigationBarItem> bottomNavIconList({required int alarmAmount}) {
  return [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.map),
      label: 'Map',
    ),
    BottomNavigationBarItem(
      icon: Badge(
        label: Text('$alarmAmount'),
        child: const Icon(Icons.notifications),
      ),
      label: 'Alarm',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: 'Settings',
    ),
  ];
}
