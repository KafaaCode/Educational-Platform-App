import 'package:dartz/dartz.dart';
import 'package:educational_platform_app/core/error/exceptions.dart';
import 'package:educational_platform_app/core/error/failure.dart';
import 'package:educational_platform_app/core/utils/typedef.dart';
import 'package:educational_platform_app/student/src/data/data_source/main/main_remote_data_source.dart';
import 'package:educational_platform_app/student/src/data/models/models.dart';
import 'package:educational_platform_app/student/src/domain/repository/main_repository.dart';

class MainRepository extends BaseMainRepository {
  final BaseMainRemoteDataSource mainRemoteDataSource;

  MainRepository({required this.mainRemoteDataSource});

  @override
  ResultFuture<List<Course>> getCourses() async {
    try {
      final response = await mainRemoteDataSource.getCourses();
      return Right(response);
    } on AuthException catch (failure) {
      return Left(ServerFailure.fromResponse(
          statusCode: failure.statusCode ?? 404,
          message: failure.authMessage ?? ''));
    }
  }

  @override
  ResultFuture<List<Teacher>> getTeacherAlerte() async {
    try {
      final response = await mainRemoteDataSource.getTeacherAlerte();
      return Right(response);
    } on AuthException catch (failure) {
      return Left(ServerFailure.fromResponse(
          statusCode: failure.statusCode ?? 404,
          message: failure.authMessage ?? ''));
    }
  }

  @override
  ResultFuture<List<Course>> getOffersDiscounts() async {
    try {
      final response = await mainRemoteDataSource.getOffersDiscounts();
      return Right(response);
    } on AuthException catch (failure) {
      return Left(ServerFailure.fromResponse(
          statusCode: failure.statusCode ?? 404,
          message: failure.authMessage ?? ''));
    }
  }

  @override
  ResultFuture<List<Course>> getFavorites() async {
    try {
      final response = await mainRemoteDataSource.getFavorites();
      return Right(response);
    } on AuthException catch (failure) {
      return Left(ServerFailure.fromResponse(
          statusCode: failure.statusCode ?? 404,
          message: failure.authMessage ?? ''));
    }
  }

  @override
  ResultFuture<void> toggleFavorite({required int courseId}) async {
    try {
      final response =
          await mainRemoteDataSource.toggleFavorite(courseId: courseId);
      return Right(response);
    } on AuthException catch (failure) {
      return Left(ServerFailure.fromResponse(
          statusCode: failure.statusCode ?? 404,
          message: failure.authMessage ?? ''));
    }
  }

  @override
  ResultFuture<List<Lesson>> getLessons({required int courseId}) async {
    try {
      final response =
          await mainRemoteDataSource.getLessons(courseId: courseId);
      return Right(response);
    } on AuthException catch (failure) {
      return Left(ServerFailure.fromResponse(
          statusCode: failure.statusCode ?? 404,
          message: failure.authMessage ?? ''));
    }
  }

  @override
  ResultFuture<List<Course>> getcoursesFromTeacher(
      {required int teacherId}) async {
    try {
      final response = await mainRemoteDataSource.getcoursesFromTeacher(
          teacherId: teacherId);
      return Right(response);
    } on AuthException catch (failure) {
      return Left(ServerFailure.fromResponse(
          statusCode: failure.statusCode ?? 404,
          message: failure.authMessage ?? ''));
    }
  }

  @override
  ResultFuture<List<Teacher>> getTeacherFilter(
      {required int specializationId}) async {
    try {
      final response = await mainRemoteDataSource.getTeacherFilter(
          specializationId: specializationId);
      return Right(response);
    } on AuthException catch (failure) {
      return Left(ServerFailure.fromResponse(
          statusCode: failure.statusCode ?? 404,
          message: failure.authMessage ?? ''));
    }
  }

  @override
  ResultFuture<List<Course>> getCourseFilter(
      {required String courseType}) async {
    try {
      final response =
          await mainRemoteDataSource.getCourseFilter(courseType: courseType);
      return Right(response);
    } on AuthException catch (failure) {
      return Left(ServerFailure.fromResponse(
          statusCode: failure.statusCode ?? 404,
          message: failure.authMessage ?? ''));
    }
  }

  @override
  ResultFuture<List<Course>> getMyCourses() async {
    try {
      final response = await mainRemoteDataSource.getMyCourses();
      return Right(response);
    } on AuthException catch (failure) {
      return Left(ServerFailure.fromResponse(
          statusCode: failure.statusCode ?? 404,
          message: failure.authMessage ?? ''));
    }
  }

  @override
  ResultFuture<void> requestCourse({required int courseId}) async {
    try {
      final response =
          await mainRemoteDataSource.requestCourse(courseId: courseId);
      return Right(response);
    } on AuthException catch (failure) {
      return Left(ServerFailure.fromResponse(
          statusCode: failure.statusCode ?? 404,
          message: failure.authMessage ?? ''));
    }
  }

  @override
  ResultFuture<VideoTime> updateProgress(
      {required int videoId, int? size, int? progressTime}) async {
    try {
      // print("$videoId ----- $progressTime ------- $size");
      final response = await mainRemoteDataSource.updateProgress(
          videoId: videoId, progressTime: progressTime, size: size);
      return Right(response);
    } on AuthException catch (failure) {
      return Left(
          ServerFailure.fromResponse(statusCode: failure.statusCode ?? 404));
    }
  }
}
