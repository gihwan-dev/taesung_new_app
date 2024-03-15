import 'package:flutter/material.dart';

import 'package:taesung_app/models/device_info_model.dart';

class DeviceDropDown extends StatelessWidget {
  final DeviceInfoModel selectedDeviceInfo;
  final List<DeviceInfoModel> deviceInfoList;
  final Function(DeviceInfoModel) onChanged;

  const DeviceDropDown({
    super.key,
    required this.selectedDeviceInfo,
    required this.deviceInfoList,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: [
        for (final deviceInfo in deviceInfoList)
          DropdownMenuItem(
            value: deviceInfo,
            child: Text(deviceInfo.diNickname ?? deviceInfo.diName),
          )
      ],
      onChanged: (value) => onChanged(value as DeviceInfoModel),
      value: selectedDeviceInfo,
    );
  }
}
