import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/providers/collect_code_provider.dart';

class CollectStateText extends ConsumerWidget {
  final int dsCollect;
  const CollectStateText({
    super.key,
    required this.dsCollect,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final collectName =
        ref.read(collectCodeProvider.notifier).getCollectCodeName(dsCollect);
    return Text(
      collectName,
      style: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
