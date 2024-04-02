import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/layouts/home_main_layout.dart';

class HomeMainPage extends ConsumerStatefulWidget {
  const HomeMainPage({
    super.key,
  });

  @override
  ConsumerState<HomeMainPage> createState() => _HomeMainPageState();
}

class _HomeMainPageState extends ConsumerState<HomeMainPage> {
  @override
  Widget build(BuildContext context) {
    return const HomeMainLayout();
  }
}
