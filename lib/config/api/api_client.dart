import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:wabu/config/api/api.dart';
import 'package:wabu/constants/constants.dart';
import 'package:wabu/utils/utils.dart';

class ApiClient {
  ApiClient._();

  static final ApiClient _instance = ApiClient._().._init();
  static ApiClient get instance => _instance;

  late DioClient securityClient;
  late DioClient studentClient;
  late DioClient universityClient;

  void _init() {
    final environment = Globals.environment;
    final apiConfig = switch (environment) {
      Environment.dev => ApiConfig.dev,
      Environment.prd => ApiConfig.prd,
    };

    securityClient = DioClient(baseUrl: apiConfig.securityBaseUrl).._init();
    studentClient = DioClient(baseUrl: apiConfig.studentBaseUrl).._init();
    universityClient = DioClient(baseUrl: apiConfig.universityBaseUrl).._init();
  }
}

class DioClient {
  DioClient({required this.baseUrl});

  final String baseUrl;

  late final Dio dio;

  void _init() {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        headers: <String, String>{
          HttpHeaders.contentTypeHeader: 'application/json',
        },
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
      ),
    )..interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) {
            logger.i('''
            Path:
            ${options.baseUrl}${options.path}
            Headers:
            ${options.headers}
            Query:
            ${options.queryParameters}
            Data:
            ${options.data}
          ''');

            return handler.next(options);
          },
          onResponse: (response, handler) {
            logger.i(response);

            return handler.next(response);
          },
          onError: (error, handler) {
            logger.e(error);

            if (error.type == DioExceptionType.badResponse &&
                error.response != null) {
              logger.e(error.response);
              return handler.resolve(error.response!);
            }

            return handler.next(error);
          },
        ),
      );

    (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () =>
        HttpClient()
          ..badCertificateCallback =
              (X509Certificate cert, String host, int port) => true;
  }
}
