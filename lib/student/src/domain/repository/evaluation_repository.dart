import 'package:educational_platform_app/core/utils/evaluations.dart';
import 'package:educational_platform_app/core/utils/typedef.dart';

abstract class BaseEvaluationRepository {
  ResultFuture<EvaluationModel> setEvaluation(
      {required EvaluationModel evaluation});
}
