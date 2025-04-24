import 'package:educational_platform_app/core/utils/typedef.dart';
import 'package:educational_platform_app/student/src/data/models/models.dart';

abstract class BaseAuthRepository {
  ResultFuture<Auth> register({required User user});
  ResultFuture<UpdateData> update({required User user});
  ResultFuture<UpdateData> updateProfile({required String path});
  ResultFuture<Auth> login({required String email, required String password});
  ResultFuture<Auth> refreshToken();
  ResultFuture<List<Region>> getRegions();
  ResultFuture<bool> logout();
}
