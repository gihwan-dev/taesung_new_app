import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:taesung_app/features/device/details/widgets/collect/collect_state_text.dart';
import 'package:taesung_app/features/device/utils/color_utils.dart';
import 'package:taesung_app/models/device_info_model.dart';
import 'package:taesung_app/models/device_state_model.dart';
import 'package:taesung_app/providers/device_state_provider.dart';

class CollectButton extends ConsumerWidget {
  const CollectButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceInfo = GoRouterState.of(context).extra! as DeviceInfoModel;
    final deviceState = ref.watch(deviceStateProvider(deviceInfo.diIdx));
    final isCanCollect = deviceState.dsRemoteCollect == 1;

    void handlerButtonClick({required int dsCollect}) {
      switch (dsCollect) {
        case 1:
          ref
              .read(deviceStateProvider(deviceInfo.diIdx).notifier)
              .emitStartCollect(diIdx: deviceInfo.diIdx);
          return;
        default:
          ref
              .read(deviceStateProvider(deviceInfo.diIdx).notifier)
              .emitResetCollect(diIdx: deviceInfo.diIdx);
      }
    }

    return Container(
      decoration: BoxDecoration(
        color: getCollectCodeColor(ccIdx: deviceState.dsCollect),
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      ),
      width: 300,
      height: 250,
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: !isCanCollect
                  ? const Text('포집 불가')
                  : CollectStateText(dsCollect: deviceState.dsCollect),
            ),
          ),
          isCanCollect
              ? deviceState.emitStatus != DeviceEmitStatus.isLoading
                  ? Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => handlerButtonClick(
                            dsCollect: deviceState.dsCollect),
                        child:
                            _buildButtonText(dsCollect: deviceState.dsCollect),
                      ),
                    )
                  : const Center(
                      child: CircularProgressIndicator(),
                    )
              : const SizedBox(height: 10),
          const SizedBox(height: 15),
        ],
      ),
    );
  }

  Text _buildButtonText({required int dsCollect}) {
    if (dsCollect == 1) {
      return const Text(
        '포집 시작',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      );
    } else {
      return const Text(
        '리셋',
        style: TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.bold,
        ),
      );
    }
  }
}
