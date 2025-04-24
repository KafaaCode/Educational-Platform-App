import 'package:dio/dio.dart';
import 'package:educational_platform_app/core/network/api_call_handler.dart';
import 'package:educational_platform_app/core/network/api_constances.dart';
import 'package:educational_platform_app/core/services/services_locator.dart';
import 'package:educational_platform_app/core/utils/evaluations.dart';

abstract class BaseEvaluationRemoteDataSource {
  Future<EvaluationModel> setEvaluation({
    required EvaluationModel evaluation,
  });
}

class EvaluationRemoteDataSource extends BaseEvaluationRemoteDataSource {
  final Dio _dio = Dio();

  EvaluationRemoteDataSource();

  @override
  Future<EvaluationModel> setEvaluation({required EvaluationModel evaluation}) {
    print(ApiConstances.setEvaluationUrl);
    return sl.get<ApiCallHandler>().handler<EvaluationModel>(
          apiCall: () => _dio.post(
            ApiConstances.setEvaluationUrl,
            options: Options(
              headers: ApiConstances.headers(
                isToken: true,
                token: ApiConstances.getToken(),
              ),
            ),
            data: evaluation.toJson(),
          ),
          responseHandler: (response) {
            final dynamic evaluation = response.data;

            return EvaluationModel.fromJson(evaluation);
          },
        );
  }
}
