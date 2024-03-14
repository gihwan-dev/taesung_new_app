import 'package:flutter/material.dart';
import 'package:taesung_app/features/map/map_screen.dart';

class HomeMapPage extends StatelessWidget {
  const HomeMapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: MapScreen(),
    );
  }
}
