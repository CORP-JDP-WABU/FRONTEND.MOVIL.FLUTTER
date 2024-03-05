import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:wabu/config/api/api.dart';
import 'package:wabu/constants/constants.dart';
import 'package:wabu/utils/utils.dart';

class ApiClientToken {
  ApiClientToken._();

  static final ApiClientToken _instance = ApiClientToken._().._init();
  static ApiClientToken get instance => _instance;

  late TokenDioClient studentClient;
  late TokenDioClient universityClient;
  late TokenDioClient dashboardClient;
  late TokenDioClient operationClient;

  void _init() {
    final environment = Globals.environment;
    final apiConfig = switch (environment) {
      Environment.dev => ApiConfig.dev,
      Environment.prd => ApiConfig.prd,
    };

    studentClient = TokenDioClient(baseUrl: apiConfig.studentBaseUrl).._init();
    universityClient = TokenDioClient(baseUrl: apiConfig.universityBaseUrl)
      .._init();
    dashboardClient = TokenDioClient(baseUrl: apiConfig.dashboardBaseUrl)
      .._init();
    operationClient = TokenDioClient(baseUrl: apiConfig.operationBaseUrl)
      .._init();
  }
}

class TokenDioClient {
  TokenDioClient({required this.baseUrl});

  final String baseUrl;

  late final Dio dio;

  void _init() {
    final token = Globals.token ?? '';

    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        headers: <String, String>{
          HttpHeaders.contentTypeHeader: 'application/json',
          HttpHeaders.authorizationHeader: 'Bearer $token',
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
