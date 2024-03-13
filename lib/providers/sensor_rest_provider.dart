import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:taesung_app/models/sensor_data_model.dart';
import 'package:taesung_app/providers/dio_provider.dart';

part 'sensor_rest_provider.g.dart';

@riverpod
class SensorRest extends _$SensorRest {
  @override
  FutureOr<List<SensorDataModel>> build(
      {required int diIdx,
      required String startDate,
      required String endDate}) {
    return getSensorData(
      diIdx: diIdx,
      startDate: startDate,
      endDate: endDate,
    );
  }

  Future<List<SensorDataModel>> getSensorData(
      {required int diIdx,
      required String startDate,
      required String endDate}) async {
    final response = await ref
        .watch(publicDioProvider)
        .get('/sensor-rest/$diIdx?startDate=$startDate&endDate=$endDate');
    return [for (final json in response.data) SensorDataModel.fromJson(json)];
  }

  Future<void> fetchSensorData(
      {required int diIdx,
      required String startDate,
      required String endDate}) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return await getSensorData(
        diIdx: diIdx,
        startDate: startDate,
        endDate: endDate,
      );
    });
  }
}
