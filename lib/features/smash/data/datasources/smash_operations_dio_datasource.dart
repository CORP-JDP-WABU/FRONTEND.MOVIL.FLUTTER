import 'package:dio/dio.dart';
import 'package:wabu/features/smash/data/data.dart';

class SmashOperationsDioDatasource extends SmashOperationsRemoteDatasource {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'http://52.91.65.217:4004/api/qualification/v1.0/',
    ),
  )..interceptors.add(
      InterceptorsWrapper(
        onError: (error, handler) {
          if (error.type == DioExceptionType.badResponse &&
              error.response != null) {
            return handler.resolve(error.response!);
          }

          return handler.next(error);
        },
      ),
    );
}
