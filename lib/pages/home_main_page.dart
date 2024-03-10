import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/features/device/widgets/device_item.dart';
import 'package:taesung_app/features/device/widgets/user_name.dart';
import 'package:taesung_app/providers/device_info_provider.dart';

class HomeMainPage extends ConsumerStatefulWidget {
  const HomeMainPage({
    super.key,
  });

  @override
  ConsumerState<HomeMainPage> createState() => _HomeMainPageState();
}

class _HomeMainPageState extends ConsumerState<HomeMainPage> {
  @override
  Widget build(BuildContext context) {
    final deviceInfoList = ref.watch(deviceInfoProvider);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const UserName(),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                separatorBuilder: (context, index) =>
                    (const SizedBox(height: 20)),
                itemCount: deviceInfoList.length,
                itemBuilder: (context, index) => DeviceItem(
                  diIdx: deviceInfoList[index].diIdx,
                  diName: deviceInfoList[index].diName,
                  diNickname: deviceInfoList[index].diNickname,
                ),
                shrinkWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
