import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/features/device/utils/color_utils.dart';
import 'package:taesung_app/providers/collect_code_provider.dart';

class CollectCodeText extends ConsumerWidget {
  final int ccIdx;
  const CollectCodeText({
    super.key,
    required this.ccIdx,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final collectCodeState = ref.watch(collectCodeProvider);
    return collectCodeState.when(
      data: (collectCode) => Text(
        ref.read(collectCodeProvider.notifier).getCollectCodeName(ccIdx),
        style: TextStyle(
          color: getCollectCodeColor(ccIdx: ccIdx),
          fontWeight: FontWeight.w600,
        ),
      ),
      error: (er, st) => const Text('...'),
      loading: () => const Text('...'),
    );
  }
}
