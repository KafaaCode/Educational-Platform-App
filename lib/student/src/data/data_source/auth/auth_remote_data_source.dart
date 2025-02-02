import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:educational_platform_app/student/core/error/exceptions.dart';
import 'package:educational_platform_app/student/core/network/api_constances.dart';
import 'package:educational_platform_app/student/src/data/models/models.dart';

abstract class BaseAuthRemoteDataSource {
  Future<Auth> register({required User user});
  Future<Auth> login({required String email, required String password});
  Future<Auth> refreshToken();
  Future<List<Region>> getRegions();
  Future<bool> logout();
}

class AuthRemoteDataSource extends BaseAuthRemoteDataSource {
  @override
  Future<Auth> login({required String email, required String password}) async {
    try {
      final Map<String, dynamic> requestBody = {
        'email': email,
        'password': password,
      };
      print(requestBody);
      final response = await Dio().post(
        ApiConstances.loginUrl,
        options: Options(
          headers: ApiConstances.headers(""),
          validateStatus: (status) => status! < 500,
        ),
        data: requestBody,
      );

      if (response.statusCode == 422) {
        final Map<String, dynamic> errors = response.data['errors'] ?? {};
        final String errorMessage = errors.values
            .expand((e) => e is List ? e : [e.toString()])
            .join(', ');
        throw AuthException(
          statusCode: 422,
          authMessage: errorMessage.isNotEmpty
              ? errorMessage
              : 'Validation error occurred',
        );
      }

      if (response.statusCode == 200 || response.statusCode == 201) {
        return Auth.fromJson(response.data);
      }

      throw AuthException(
        statusCode: response.statusCode ?? 400,
        authMessage: response.data['message'] ?? 'Unknown error occurred',
      );
    } on DioException catch (e) {
      print('DioError: ${e.message}');
      print('Response data: ${e.response?.data}');
      throw AuthException.fromDioError(e.response?.statusCode ?? 404, e);
    } catch (e) {
      print('Unexpected error: $e');
      throw AuthException(statusCode: 404, authMessage: e.toString());
    }
  }

  @override
  Future<bool> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<Auth> refreshToken() {
    // TODO: implement refreshToken
    throw UnimplementedError();
  }

  @override
  Future<Auth> register({required User user}) async {
    try {
      final Map<String, dynamic> requestBody = {
        'name': user.name,
        'email': user.email,
        'password': user.password,
        'password_confirmation': user.password,
        'region_id': user.region,
        'gander': user.gander,
        'phoneNumber': user.phoneNumber,
        "academic_stage": user.academic_stage
      };
      print(requestBody);
      final response = await Dio().post(
        ApiConstances.registerUrl,
        options: Options(
          headers: ApiConstances.headers(""),
          validateStatus: (status) => status! < 500,
        ),
        data: requestBody,
      );

      if (response.statusCode == 422) {
        final Map<String, dynamic> errors = response.data['errors'] ?? {};
        final String errorMessage = errors.values
            .expand((e) => e is List ? e : [e.toString()])
            .join(', ');
        throw AuthException(
          statusCode: 422,
          authMessage: errorMessage.isNotEmpty
              ? errorMessage
              : 'Validation error occurred',
        );
      }

      // Handle successful response
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Auth.fromJson(response.data);
      }

      throw AuthException(
        statusCode: response.statusCode ?? 400,
        authMessage: response.data['errors'] ?? 'Unknown error occurred',
      );
    } on DioException catch (e) {
      print('DioError: ${e.message}');
      print('Response data: ${e.response?.data}');
      throw AuthException.fromDioError(e.response?.statusCode ?? 404, e);
    } catch (e) {
      print('Unexpected error: $e');
      throw AuthException(statusCode: 404, authMessage: e.toString());
    }
  }

  @override
  Future<List<Region>> getRegions() async {
    try {
      // return const [
      //   Region(id: 0, name: 'اعزاز'),
      //   Region(id: 1, name: 'ادلب'),
      //   Region(id: 2, name: 'جرابلس'),
      // ];
      final response = await Dio().get(
        ApiConstances.getRegionUrl,
      );

      // Handle validation errors
      if (response.statusCode == 422) {
        final Map<String, dynamic> errors = response.data['errors'] ?? {};
        final String errorMessage = errors.values
            .expand((e) => e is List ? e : [e.toString()])
            .join(', ');
        throw AuthException(
          statusCode: 422,
          authMessage: errorMessage.isNotEmpty
              ? errorMessage
              : 'Validation error occurred',
        );
      }

      // Handle successful response
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> regionsList = response.data['regions'];
        return regionsList.map((region) => Region.fromJson(region)).toList();
      }

      throw AuthException(
        statusCode: response.statusCode ?? 400,
        authMessage: response.data['message'] ?? 'Unknown error occurred',
      );
    } on DioException catch (e) {
      print('DioError: ${e.message}');
      print('Response data: ${e.response?.data}');
      throw AuthException.fromDioError(e.response?.statusCode ?? 404, e);
    } catch (e) {
      print('Unexpected error: $e');
      throw AuthException(statusCode: 404, authMessage: e.toString());
    }
  }
}
