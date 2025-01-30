import 'package:educational_platform_app/student/core/utils/typedef.dart';
import 'package:educational_platform_app/student/src/data/models/models.dart';

abstract class BaseAuthRepository {
  ResultFuture<Auth> register({required User user});
  ResultFuture<Auth> login({required String email, required String password});
  ResultFuture<Auth> refreshToken();
  ResultFuture<bool> logout();
}
