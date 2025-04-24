import 'package:educational_platform_app/core/services/services_locator.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/check_auth/check_auth_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ApiConstances {
  static const String _baseUrl =
      "https://kafaacode.com/educational_platform_app/public/api";
/*   static const String _baseUrl = "http://127.0.0.1:8000/api"; */
  // static const String _baseUrl = "http://192.168.22.9:8000/api";

  static const String _baseUrlApi = "$_baseUrl/Student";
  /*   static const String _baseUrl =
    "https://kafaacode.com/educational_platform_app/public/api"; */

  static Map<String, dynamic> headers(
      {bool? isToken = true, String? token, bool? isMulti = false}) {
    if (!isToken!) {
      return {"accept": "application/json"};
    } else {
      if (isMulti == true) {
        return {
          "accept": "multipart/form-data",
          "Authorization": "Bearer $token"
        };
      }
      return {
        "accept": "application/json",
        "Authorization": "Bearer $token",
      };
    }
  }

  // Authentication
  static const String registerUrl = "$_baseUrl/auth/register";
  static const String updateAcountStudentUrl =
      "$_baseUrlApi/updateAcountStudent";
  static const String loginUrl = "$_baseUrl/auth/login";
  static const String logoutUrl = "$_baseUrl/logout";
  static const String refreshTokenUrl = "$_baseUrl/auth/refreshToken";
  static const String getRegionUrl = "$_baseUrl/Region";
  // Main
  static const String getCoursesUrl = "$_baseUrlApi/PopularCourse";
  static const String getTeacherAlerteUrl = "$_baseUrlApi/TeacherAlerte";
  static const String getOffersDiscountUrl = "$_baseUrlApi/OffersDiscount";
  static const String getFavouritesUrl = "$_baseUrlApi/Favourite";
  static const String setEvaluationUrl = "$_baseUrlApi/evaluation/store";
  static const String toggleFavouriteUrl = "$_baseUrlApi/Favourite/store";
  static const String getCourseFilterUrl = "$_baseUrlApi/ByAcademicStage";
  static const String updateProgressUrl = "$_baseUrl/update-progress";
  static const String getCourseHasStudentUrl = "$_baseUrlApi/CourseHasStudent";
  static String getLessoneUrl({required int courseId}) =>
      "$_baseUrlApi/LessonNameHasCourseHasStudent/$courseId";
  static String getTeacherWithCoursesUrl({required int teacherId}) =>
      "$_baseUrlApi/getTeacherWithCourses/$teacherId";
  static String getTeacherFilterUrl({required int specializationId}) =>
      "$_baseUrlApi/getTeachersBySpecialization/$specializationId";

  // Tools
  static String getToken() {
    print(HydratedBloc.storage.read('token').toString());

    if (HydratedBloc.storage.read('token') == null) {
      var state = sl.get<CheckAuthBloc>();
      state.add(const CheckAuthEvent.logout());
      state.close();
      return '';
    }
    return HydratedBloc.storage.read('token').toString();
  }
}
