import 'package:dio/dio.dart';
import 'package:educational_platform_app/core/error/exceptions.dart';
import 'package:educational_platform_app/core/network/api_call_handler.dart';
import 'package:educational_platform_app/core/network/api_constances.dart';
import 'package:educational_platform_app/student/src/data/models/models.dart';

import '../../../../../core/services/services_locator.dart';

abstract class BaseAuthRemoteDataSource {
  Future<Auth> register({required User user});
  Future<UpdateData> update({required User user});
  Future<UpdateData> updateProfile({required String path});
  Future<Auth> login({required String email, required String password});
  Future<RefreshToken> refreshToken();
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
      final response = await Dio().post(
        ApiConstances.loginUrl,
        options: Options(
          headers: ApiConstances.headers(isToken: false),
          validateStatus: (status) => status! < 500,
        ),
        data: requestBody,
      );
      print('----------------data login----------------');
      print(response.data);
      print(response.statusCode);
      print('----------------data login end----------------');
      if (response.statusCode == 422) {
        print(response.data);
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
      print('dio error : ${e.message}');
      print('dio error : ${e.response?.statusCode}');
      print('dio error : ${e.response?.data}');
      throw AuthException.fromDioError(e.response?.statusCode ?? 404, e);
    }
  }

  @override
  Future<bool> logout() async {
    try {
      final response = await Dio().post(ApiConstances.logoutUrl,
          options: Options(
            headers: ApiConstances.headers(
                isToken: true, token: ApiConstances.getToken()),
            validateStatus: (status) => status! < 500,
          ));
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
        return true;
      }

      throw AuthException(
        statusCode: response.statusCode ?? 400,
        authMessage: response.data['message'] ?? 'Unknown error occurred',
      );
    } on DioException catch (e) {
      throw AuthException.fromDioError(e.response?.statusCode ?? 404, e);
    } catch (e) {
      throw AuthException(statusCode: 000, authMessage: e.toString());
    }
  }

  @override
  Future<RefreshToken> refreshToken() async {
    try {
      final response = await Dio().post(
        ApiConstances.refreshTokenUrl,
        options: Options(
          headers: ApiConstances.headers(
              isToken: true, token: ApiConstances.getToken()),
          validateStatus: (status) => status! < 500,
        ),
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
        return RefreshToken.fromJson(response.data);
      }

      throw AuthException(
        statusCode: response.statusCode ?? 400,
        authMessage: response.data['message'] ?? 'Unknown error occurred',
      );
    } on DioException catch (e) {
      throw AuthException.fromDioError(e.response?.statusCode ?? 404, e);
    } catch (e) {
      throw AuthException(statusCode: 404, authMessage: e.toString());
    }
  }

  @override
  Future<Auth> register({required User user}) async {
    try {
      final requestBody = FormData.fromMap({
        'name': user.name,
        'email': user.email,
        'password': user.password,
        'password_confirmation': user.password,
        'region_id': user.region,
        'gander': user.gander,
        'phoneNumber': user.phoneNumber,
        "academic_stage": user.academic_stage
      });
      final response = await Dio().post(
        ApiConstances.registerUrl,
        options: Options(
          headers: ApiConstances.headers(isToken: false),
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
      print('dio error : ${e.message}');
      print('dio error : ${e.response?.statusCode}');
      print('dio error : ${e.response?.data}');
      throw AuthException.fromDioError(e.response?.statusCode ?? 404, e);
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
      throw AuthException.fromDioError(e.response?.statusCode ?? 404, e);
    } catch (e) {
      throw AuthException(statusCode: 404, authMessage: e.toString());
    }
  }

  @override
  Future<UpdateData> update({required User user}) async {
    final requestBody = FormData.fromMap({
      'name': user.name,
      // 'email': user.email,
      'password': user.password,
      // 'password_confirmation': user.password,
      // 'region_id': user.region,
      'gander': user.gander,

      'phoneNumber': user.phoneNumber,
      "academic_stage": user.academic_stage
    });
    return sl.get<ApiCallHandler>().handler(
          apiCall: () async => await Dio().post(
            ApiConstances.updateAcountStudentUrl,
            options: Options(
              headers: ApiConstances.headers(
                  isToken: true, token: ApiConstances.getToken()),
              validateStatus: (status) => status! < 500,
            ),
            data: requestBody,
          ),
          responseHandler: (response) {
            return UpdateData.fromJson(response.data);
          },
        );
  }

  @override
  Future<UpdateData> updateProfile({required String path}) async {
    final requestBody = FormData.fromMap({
      'image': await MultipartFile.fromFile(path),
    });
    return sl.get<ApiCallHandler>().handler(
          apiCall: () async => await Dio().post(
            ApiConstances.updateAcountStudentUrl,
            options: Options(
              headers: ApiConstances.headers(
                  isToken: true, token: ApiConstances.getToken()),
              validateStatus: (status) => status! < 500,
            ),
            data: requestBody,
          ),
          responseHandler: (response) {
            return UpdateData.fromJson(response.data);
          },
        );
  }
}
