import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:taesung_app/features/setting/features/collect/widgets/auto_collect_detail_layout.dart';
import 'package:taesung_app/models/device_info_model.dart';

class CollectSettingDetailPage extends StatelessWidget {
  const CollectSettingDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final curDeviceInfo = GoRouterState.of(context).extra! as DeviceInfoModel;
    return Scaffold(
      appBar: AppBar(
        title: Text('${curDeviceInfo.diNickname ?? curDeviceInfo.diName} 설정'),
      ),
      body: const AutoCollectDetailLayout(),
    );
  }
}
