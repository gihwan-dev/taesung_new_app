import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:label_marker/label_marker.dart';
import 'package:taesung_app/features/device/widgets/device_item.dart';
import 'package:taesung_app/models/device_info_model.dart';
import 'package:taesung_app/providers/device_info_provider.dart';
import 'package:taesung_app/widgets/error_content.dart';

class MapScreen extends ConsumerStatefulWidget {
  const MapScreen({super.key});

  @override
  ConsumerState<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends ConsumerState<MapScreen> {
  late GoogleMapController mapController;
  Set<Marker> markers = {};
  DeviceInfoModel? curSelectedDeviceInfo;

  Future<void> _setLabelMarkers(List<DeviceInfoModel> deviceInfoList) async {
    for (final deviceInfo in deviceInfoList) {
      await markers.addLabelMarker(
        LabelMarker(
            onTap: () {
              setState(() {
                curSelectedDeviceInfo = deviceInfo;
              });
            },
            textStyle: const TextStyle(fontSize: 50),
            label: deviceInfo.diNickname ?? deviceInfo.diName,
            markerId: MarkerId(deviceInfo.diIdx.toString()),
            position: LatLng(deviceInfo.diLat, deviceInfo.diLng)),
      );
    }
  }

  Future<void> _onMapCreated(
    GoogleMapController controller,
    List<DeviceInfoModel> deviceInfoList,
  ) async {
    // 전달받은 controller를 mapController에 저장
    mapController = controller;
    // 레이블 마커 생성
    await _setLabelMarkers(deviceInfoList);
    // setState를 호출해서 UI를 다시 그려 마커를 표시
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final deviceInfoState = ref.watch(deviceInfoProvider);

    // curSelectedDeviceInfo가 null이면 deviceInfoState의 첫 번째 요소를 할당
    curSelectedDeviceInfo ??= deviceInfoState.value?[0];

    return deviceInfoState.when(
      data: (deviceInfoList) => Stack(
        children: [
          GoogleMap(
            myLocationButtonEnabled: false,
            onMapCreated: (controller) async =>
                await _onMapCreated(controller, deviceInfoList),
            initialCameraPosition: CameraPosition(
              target: LatLng(deviceInfoList[0].diLat, deviceInfoList[0].diLng),
              zoom: 15.0,
            ),
            markers: markers,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: DeviceItem(
                deviceInfo: curSelectedDeviceInfo!,
              ),
            ),
          )
        ],
      ),
      error: (err, st) => ErrorContent(provider: deviceInfoProvider),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
