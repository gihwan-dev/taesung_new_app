import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:taesung_app/models/alarm_data_model.dart';
import 'package:taesung_app/providers/dio_provider.dart';

part 'alarm_data_provider.g.dart';

@riverpod
class AlarmData extends _$AlarmData {
  @override
  FutureOr<List<AlarmDataModel>> build({
    required int diIdx,
    required int acIdx,
  }) {
    return getAlarmData(diIdx: diIdx, acIdx: acIdx);
  }

  Future<List<AlarmDataModel>> getAlarmData({
    required int diIdx,
    required int acIdx,
  }) async {
    final response = await ref.watch(publicDioProvider).get(
      '/alarm-data',
      queryParameters: {
        'di_idx': diIdx,
        'ac_idx': acIdx,
      },
    );
    return [for (final data in response.data) AlarmDataModel.fromJson(data)];
  }
}
