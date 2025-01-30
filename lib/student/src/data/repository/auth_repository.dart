import 'package:dartz/dartz.dart';
import 'package:educational_platform_app/student/core/error/exceptions.dart';
import 'package:educational_platform_app/student/core/error/failure.dart';
import 'package:educational_platform_app/student/core/utils/typedef.dart';
import 'package:educational_platform_app/student/src/data/data_source/auth/auth_remote_data_source.dart';
import 'package:educational_platform_app/student/src/data/models/models.dart';
import 'package:educational_platform_app/student/src/domain/repository/auth_repository.dart';

class AuthRepository extends BaseAuthRepository {
  final BaseAuthRemoteDataSource baseAuthRemoteDataSource;

  AuthRepository({required this.baseAuthRemoteDataSource});
  @override
  ResultFuture<Auth> login(
      {required String email, required String password}) async {
    try {
      final response = await baseAuthRemoteDataSource.login(
          email: email, password: password);
      return Right(response);
    } on AuthException catch (failure) {
      return Left(
          ServerFailure.fromResponse(statusCode: failure.statusCode ?? 404));
    }
  }

  @override
  ResultFuture<bool> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  ResultFuture<Auth> refreshToken() {
    // TODO: implement refreshToken
    throw UnimplementedError();
  }

  @override
  ResultFuture<Auth> register({required User user}) async {
    try {
      final response = await baseAuthRemoteDataSource.register(user: user);
      return Right(response);
    } on AuthException catch (failure) {
      return Left(
          ServerFailure.fromResponse(statusCode: failure.statusCode ?? 404));
    }
  }
}
