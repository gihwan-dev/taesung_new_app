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

    // collect가 1인경우 포집 대기인 상태이므로 시작 버튼을 통한 시작
    // 이외의 경우 리셋 버튼이 표기되므로 리셋을 통한 초기화
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
              // 포집 가능 여부에 따른 텍스트 표시
              child: !isCanCollect
                  ? const Text('포집 불가')
                  : CollectStateText(dsCollect: deviceState.dsCollect),
            ),
          ),
          isCanCollect
              // collect가 1인 경우 그리고 웹소켓 통신 상태가 로딩 상태가 아닌 경우 버튼 표시
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
                  // 로딩중인 경우 로딩 상태 표시
                  : const Center(
                      child: CircularProgressIndicator(),
                    )
              // 포집이 가능하지 않은경우 빈 컨테이너 표시
              : const SizedBox(height: 10),
          // 높이 조절용 박스
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
