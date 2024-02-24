import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/common/data/response/response_dto.dart';
import 'package:wabu/config/api/api.dart';
import 'package:wabu/features/authentication/data/datasources/university_remote_datasource.dart';
import 'package:wabu/features/authentication/domain/models/university/university.dart';

class UniversityDioDatasource extends UniversityRemoteDatasource {
  final dio = ApiClient.instance.universityClient.dio;

  @override
  Future<Either<Failure, List<University>>> getUniversities() async {
    final response = await dio.get('university/v1.0/');

    if (response.statusCode != 200) {
      final failureResponse = Failure.fromJson(response.data);

      return Left(failureResponse);
    }

    final getUniversitiesResponse = ResponseDto.fromJson(response.data,
        (jsons) => University.universitiesFromJson(jsons as List));

    return Right(getUniversitiesResponse.data);
  }
}
