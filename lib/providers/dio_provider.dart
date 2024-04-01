import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:taesung_app/consts/api.dart';

part 'dio_provider.g.dart';

@riverpod
Dio publicDio(PublicDioRef ref) {
  return Dio(
    BaseOptions(
      baseUrl: baseUrl,
    ),
  );
}

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
