import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/models/device_info_model.dart';
import 'package:taesung_app/providers/device_setting_provider.dart';
import 'package:taesung_app/providers/router_provider.dart';

class AutoCollectItem extends ConsumerWidget {
  final DeviceInfoModel curDeviceInfo;
  const AutoCollectItem({
    super.key,
    required this.curDeviceInfo,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceSettingState =
        ref.watch(deviceSettingProvider(diIdx: curDeviceInfo.diIdx));
    return deviceSettingState.when(
      data: (deviceSetting) => ListTile(
        onTap: () {
          ref.watch(goRouterProvider).push(
              '/setting/collect/${curDeviceInfo.diIdx}',
              extra: curDeviceInfo);
        },
        title: Text(
          curDeviceInfo.diNickname ?? curDeviceInfo.diName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: deviceSetting == null
            ? const Text('설정된 값이 존재하지 않습니다.')
            : Text(
                '${deviceSetting.desOuOver ?? "_"}Ou로 ${deviceSetting.desDelayTime ?? "_"}초 지속될 경우 자동포집'),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
      error: (err, st) => Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.red[200],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Text(
              'Error: $err',
              style: const TextStyle(color: Colors.red),
            ),
            TextButton(
              onPressed: () {
                ref.invalidate(
                    deviceSettingProvider(diIdx: curDeviceInfo.diIdx));
              },
              child: const Text('다시 불러오기'),
            )
          ],
        ),
      ),
      loading: () => Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
