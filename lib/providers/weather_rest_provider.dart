import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:taesung_app/models/weather_model.dart';
import 'package:taesung_app/providers/dio_provider.dart';

part 'weather_rest_provider.g.dart';

@riverpod
class WeatherRest extends _$WeatherRest {
  @override
  FutureOr<List<WeatherModel>> build({
    required int diIdx,
    required String startDate,
    required String endDate,
  }) {
    return getWeatherData(
      diIdx: diIdx,
      startDate: startDate,
      endDate: endDate,
    );
  }

  Future<List<WeatherModel>> getWeatherData(
      {required int diIdx,
      required String startDate,
      required String endDate}) async {
    final response = await ref
        .watch(publicDioProvider)
        .get('/weather-rest/$diIdx?startDate=$startDate&endDate=$endDate');
    return [for (final json in response.data) WeatherModel.fromJson(json)];
  }

  Future<void> fetchWeatherData(
      {required int diIdx,
      required String startDate,
      required String endDate}) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return await getWeatherData(
        diIdx: diIdx,
        startDate: startDate,
        endDate: endDate,
      );
    });
  }
}
