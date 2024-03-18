import 'package:flutter/material.dart';
import 'package:taesung_app/features/setting/features/collect/widgets/auto_collect_list_layout.dart';

class CollectSettingPage extends StatelessWidget {
  const CollectSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('자동 포집 설정'),
      ),
      body: const AutoCollectListLayout(),
    );
  }
}
