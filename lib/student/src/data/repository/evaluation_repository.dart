import 'package:dartz/dartz.dart';
import 'package:educational_platform_app/core/error/exceptions.dart';
import 'package:educational_platform_app/core/error/failure.dart';
import 'package:educational_platform_app/core/utils/evaluations.dart';
import 'package:educational_platform_app/core/utils/typedef.dart';
import 'package:educational_platform_app/student/src/data/data_source/main/evaluation_remote_data_source.dart';
import 'package:educational_platform_app/student/src/domain/repository/evaluation_repository.dart';

class EvaluationRepository extends BaseEvaluationRepository{

  final BaseEvaluationRemoteDataSource evaluationRemoteDataSource;

  EvaluationRepository({required this.evaluationRemoteDataSource});
  
  @override
  ResultFuture<EvaluationModel> setEvaluation({required EvaluationModel evaluation})  async{
      try {
      final response = await evaluationRemoteDataSource.setEvaluation(evaluation: evaluation);
      return Right(response);
    } on AuthException catch (failure) {
      return Left(
          ServerFailure.fromResponse(statusCode: failure.statusCode ?? 404));
    }
  }

}