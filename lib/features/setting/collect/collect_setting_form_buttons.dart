import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/features/setting/collect/collect_cancel_button.dart';
import 'package:taesung_app/features/setting/collect/collect_save_button.dart';
import 'package:taesung_app/features/setting/collect/delete_collect_button.dart';
import 'package:taesung_app/models/device_setting_model.dart';

class CollectSettingFormButtons extends ConsumerWidget {
  final DeviceSettingModel? deviceSetting;
  final String? ouValue;
  final String? delayValue;
  const CollectSettingFormButtons({
    super.key,
    this.deviceSetting,
    this.ouValue,
    this.delayValue,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        deviceSetting == null
            ? const SizedBox()
            : DeleteCollectButton(showSnackBar: _showSnackBar),
        Row(
          children: [
            const CollectCancelButton(),
            const SizedBox(width: 10),
            CollectSaveButton(
              showSnackBar: _showSnackBar,
              ouValue: ouValue,
              delayValue: delayValue,
            )
          ],
        )
      ],
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(
          seconds: 1,
        ),
        content: Text(message),
      ),
    );
  }
}
