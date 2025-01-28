class ApiConstances {
  static const String _baseUrl = "";
  // static const String _baseUrl = "http://127.0.0.1:8000/api";

  static Map<String, dynamic> headers(String token) {
    if (token == '') {
      return {"accept": "application/json"};
    } else {
      return {"accept": "application/json", "Authorization": "Bearer $token"};
    }
  }

  // Authentication
  static const String checkAuthUrl = "$_baseUrl/authCheck";
  static const String sendBotUrl = "$_baseUrl/sendBot";

  static const String getRecords = "$_baseUrl/records";
  static const String search = "$_baseUrl/search";
  static const String getFilters = "$_baseUrl/getFilters";
  static String getRecord(int id) => "$_baseUrl/getRecords/$id";

  static String getToken() {
    return ""; //sl.get<CheckAuthBloc>().state.token;
  }

  // static Filtera? getFilter() {
  //   return sl.get<CheckAuthBloc>().state.filter as Filtera;
  // }
}
