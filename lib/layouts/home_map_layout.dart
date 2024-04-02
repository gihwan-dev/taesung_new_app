import 'package:flutter/material.dart';
import 'package:taesung_app/features/map/map_screen.dart';

class HomeMapLayout extends StatelessWidget {
  const HomeMapLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: MapScreen(),
    );
  }
}
