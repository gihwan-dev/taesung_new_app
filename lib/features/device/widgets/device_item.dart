import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:taesung_app/features/device/widgets/device_info_container.dart';
import 'package:taesung_app/features/device/widgets/ou_text.dart';

class DeviceItem extends ConsumerWidget {
  final int diIdx;
  final String diName;
  final String? diNickname;
  const DeviceItem({
    super.key,
    required this.diIdx,
    required this.diName,
    this.diNickname,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          OuText(diIdx: diIdx),
          const SizedBox(width: 30),
          DeviceInfoContainer(
            diIdx: diIdx,
            diName: diName,
            diNickname: diNickname,
          )
        ],
      ),
    );
  }
}
