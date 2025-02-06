import 'package:educational_platform_app/student/core/services/services_locator.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/check_auth/check_auth_bloc.dart';

class ApiConstances {
  //static const String _baseUrl = "";
  static const String _baseUrl = "http://127.0.0.1:8000/api";

  static Map<String, dynamic> headers(String token) {
    if (token == '') {
      return {"accept": "application/json"};
    } else {
      return {"accept": "application/json", "Authorization": "Bearer $token"};
    }
  }

  // Authentication
  static const String registerUrl = "$_baseUrl/auth/register";
  static const String loginUrl = "$_baseUrl/auth/login";
  static const String getRegionUrl = "$_baseUrl/Region";

  static String getToken() {
    if (sl.get<CheckAuthBloc>().state.auth == null) {
      sl.get<CheckAuthBloc>().add(const CheckAuthEvent.logout());
    }
    return sl.get<CheckAuthBloc>().state.auth!.token;
  }

  // static Filtera? getFilter() {
  //   return sl.get<CheckAuthBloc>().state.filter as Filtera;
  // }
}
