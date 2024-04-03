import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:taesung_app/consts/api.dart';

part 'dio_provider.g.dart';

// auth가 필요없는 api 호출을 위한 dio
@riverpod
Dio publicDio(PublicDioRef ref) {
  return Dio(
    BaseOptions(
      baseUrl: baseUrl,
    ),
  );
}

// auth가 필요한 api 호출을 위한 dio
@riverpod
Dio privateDio(PrivateDioRef ref, String token) {
  return Dio(
    BaseOptions(
      baseUrl: baseUrl,
      headers: {
        'Authorization': 'Bearer $token',
      },
    ),
  );
}
