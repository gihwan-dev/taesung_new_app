import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:taesung_app/consts/color_const.dart';
import 'package:taesung_app/models/device_info_model.dart';
import 'package:taesung_app/providers/device_setting_provider.dart';
import 'package:taesung_app/providers/router_provider.dart';

class AutoCollectDetailLayout extends ConsumerStatefulWidget {
  const AutoCollectDetailLayout({super.key});

  @override
  ConsumerState<AutoCollectDetailLayout> createState() =>
      _AutoCollectDetailLayoutState();
}

class _AutoCollectDetailLayoutState
    extends ConsumerState<AutoCollectDetailLayout> {
  String? _ouValue;
  String? _delayValue;
  final TextEditingController _ouController = TextEditingController();
  final TextEditingController _delayController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final curDeviceInfo = GoRouterState.of(context).extra! as DeviceInfoModel;

    final deviceSettingState =
        ref.watch(deviceSettingProvider(diIdx: curDeviceInfo.diIdx));

    return deviceSettingState.when(
      data: (deviceSetting) {
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
          padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  children: [
                    const Row(),
                    const Text(
                      '복합 악취 수치 설정',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 70,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            controller: _ouController,
                            onChanged: (value) {
                              setState(() {
                                _ouValue = value;
                              });
                            },
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text('Ou'),
                      ],
                    ),
                    const SizedBox(height: 50),
                    const Text(
                      '지연 시간 설정',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 70,
                          child: TextField(
                            controller: _delayController,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            onChanged: (value) {
                              setState(() {
                                _delayValue = value;
                              });
                            },
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text('초'),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  deviceSetting == null
                      ? const SizedBox()
                      : SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () async {
                              await ref
                                  .read(deviceSettingProvider(
                                          diIdx: curDeviceInfo.diIdx)
                                      .notifier)
                                  .deleteDeviceSetting(
                                      diIdx: curDeviceInfo.diIdx);
                              if (context.mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    duration: Duration(
                                      seconds: 1,
                                    ),
                                    content: Text('성공적으로 삭제 되었습니다.'),
                                  ),
                                );
                              }
                            },
                            child: const Text(
                              '자동포집 설정 삭제',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Colors.grey[200],
                            ),
                          ),
                          onPressed: () {
                            ref.watch(goRouterProvider).pop();
                          },
                          child: const Text(
                            '취소',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              primaryBlue,
                            ),
                          ),
                          onPressed: () async {
                            if (_ouValue == null || _delayValue == null) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('올바른 값을 설정해 주세요.'),
                                ),
                              );
                              return;
                            }
                            await ref
                                .read(deviceSettingProvider(
                                        diIdx: curDeviceInfo.diIdx)
                                    .notifier)
                                .updateDeviceSetting(
                                    diIdx: curDeviceInfo.diIdx,
                                    ouValue: _ouValue!,
                                    delayValue: _delayValue!);
                            if (context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('성공적으로 저장되었습니다.'),
                                ),
                              );
                            }
                          },
                          child: const Text(
                            '저장',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        );
      },
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
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
