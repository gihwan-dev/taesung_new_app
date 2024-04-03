import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:taesung_app/features/setting/collect/collect_setting_form.dart';
import 'package:taesung_app/features/setting/collect/collect_setting_form_buttons.dart';
import 'package:taesung_app/models/device_info_model.dart';
import 'package:taesung_app/providers/device_setting_provider.dart';
import 'package:taesung_app/widgets/error_content.dart';

class CollectSettingDetailLayout extends ConsumerStatefulWidget {
  const CollectSettingDetailLayout({super.key});

  @override
  ConsumerState<CollectSettingDetailLayout> createState() =>
      _CollectSettingDetailLayoutState();
}

class _CollectSettingDetailLayoutState
    extends ConsumerState<CollectSettingDetailLayout> {
  String? _ouValue;
  String? _delayValue;
  final TextEditingController _ouController = TextEditingController();
  final TextEditingController _delayController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final curDeviceInfo = GoRouterState.of(context).extra! as DeviceInfoModel;

    final deviceSettingState =
        ref.watch(deviceSettingProvider(diIdx: curDeviceInfo.diIdx));

    return Scaffold(
      appBar: AppBar(
        title: Text('${curDeviceInfo.diNickname ?? curDeviceInfo.diName} 설정'),
      ),
      body: deviceSettingState.when(
        data: (deviceSetting) {
          // state가 변경되지 않않은 초기 진입시 null값이므로 이때 값을 할당할 수 있다면
          // 할당합니다.
          if (deviceSetting != null) {
            if (_ouValue == null && deviceSetting.desOuOver != null) {
              _ouValue = deviceSetting.desOuOver.toString();
              _ouController.text = deviceSetting.desOuOver.toString();
            }
            if (_delayValue == null && deviceSetting.desDelayTime != null) {
              _delayValue = deviceSetting.desDelayTime.toString();
              _delayController.text = deviceSetting.desDelayTime.toString();
            }
          }
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CollectSettingForm(
                  ouController: _ouController,
                  delayController: _delayController,
                  ouValue: _ouValue,
                  delayValue: _delayValue,
                  onOuChange: (value) => setState(() {
                    _ouValue = value;
                  }),
                  onDelayChange: (value) => setState(() {
                    _delayValue = value;
                  }),
                ),
                CollectSettingFormButtons(
                  deviceSetting: deviceSetting,
                  ouValue: _ouValue,
                  delayValue: _delayValue,
                ),
              ],
            ),
          );
        },
        error: (err, st) => ErrorContent(
          provider: deviceSettingProvider(diIdx: curDeviceInfo.diIdx),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
