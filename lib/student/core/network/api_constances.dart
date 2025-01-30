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

  static String getToken() {
    return ""; //sl.get<CheckAuthBloc>().state.token;
  }

  // static Filtera? getFilter() {
  //   return sl.get<CheckAuthBloc>().state.filter as Filtera;
  // }
}
