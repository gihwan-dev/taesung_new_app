import 'package:flutter/material.dart';

class CollectSettingPage extends StatelessWidget {
  const CollectSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('자동 포집'),
      ),
      body: const Center(
        child: Text('자동 포집 설정 페이지'),
      ),
    );
  }
}
