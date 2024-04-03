import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/models/device_info_model.dart';
import 'package:taesung_app/models/device_setting_model.dart';
import 'package:taesung_app/providers/device_setting_provider.dart';
import 'package:taesung_app/providers/router_provider.dart';
import 'package:taesung_app/widgets/error_content.dart';

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
        subtitle: _buildSubTitle(deviceSetting),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
      error: (err, st) => const ErrorContent(provider: deviceSettingProvider),
      loading: () => Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.grey[200],
        ),
      ),
    );
  }

  Text _buildSubTitle(DeviceSettingModel? deviceSettingModel) {
    if (deviceSettingModel == null) {
      return const Text('설정된 값이 존재하지 않습니다.');
    }
    return Text(
      '${deviceSettingModel.desOuOver ?? "_"}Ou로 ${deviceSettingModel.desDelayTime ?? "_"}초 지속될 경우 자동포집',
    );
  }
}
