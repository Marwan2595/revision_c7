import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:revision/core/constant/app_endpoints.dart';

@module
abstract class DioModule {
  @singleton
  Dio get dio => Dio(
    BaseOptions(
      baseUrl: AppEndpoints.baseUrl,
      connectTimeout: Duration(seconds: 10),
    ),
  );
}
