import 'package:dio/dio.dart';
import 'package:educational_platform_app/core/network/api_call_handler.dart';
import 'package:educational_platform_app/core/network/api_constances.dart';
import 'package:educational_platform_app/core/services/services_locator.dart';
import 'package:educational_platform_app/student/src/data/models/models.dart';

abstract class BaseMainRemoteDataSource {
  Future<List<Course>> getCourses();
  Future<List<Course>> getOffersDiscounts();
  Future<List<Teacher>> getTeacherAlerte();
  Future<List<Course>> getFavorites();
  Future<void> toggleFavorite({required int courseId});
  Future<void> requestCourse({required int courseId});
  Future<List<Lesson>> getLessons({required int courseId});
  Future<List<Course>> getcoursesFromTeacher({required int teacherId});
  Future<List<Teacher>> getTeacherFilter({required int specializationId});
  Future<List<Course>> getCourseFilter({required String courseType});
  Future<List<Course>> getMyCourses();
  Future<VideoTime> updateProgress(
      {required int videoId, int? size, int? progressTime});
}

class MainRemoteDataSource extends BaseMainRemoteDataSource {
  final Dio _dio = Dio();

  MainRemoteDataSource();

  @override
  Future<List<Course>> getCourses() async {
    return sl.get<ApiCallHandler>().handler(
          apiCall: () => _dio.get(
            ApiConstances.getCoursesUrl,
            options: Options(
              headers: ApiConstances.headers(
                isToken: true,
                token: ApiConstances.getToken(),
              ),
            ),
          ),
          responseHandler: (response) {
            final List<dynamic> coursesList = response.data['courses'];
            // print(coursesList[0]);
            return coursesList
                .map((course) => Course.fromJson(course))
                .toList();
          },
        );
  }

  @override
  Future<List<Teacher>> getTeacherAlerte() async {
    return sl.get<ApiCallHandler>().handler(
          apiCall: () => _dio.get(
            ApiConstances.getTeacherAlerteUrl,
            options: Options(
              headers: ApiConstances.headers(
                isToken: true,
                token: ApiConstances.getToken(),
              ),
            ),
          ),
          responseHandler: (response) {
            final List<dynamic> teachersList = response.data['elite_teachers'];
            return teachersList
                .map((teacher) => Teacher.fromJson(teacher))
                .toList();
          },
        );
  }

  @override
  Future<List<Course>> getOffersDiscounts() async {
    return sl.get<ApiCallHandler>().handler(
          apiCall: () => _dio.get(
            ApiConstances.getOffersDiscountUrl,
            options: Options(
              headers: ApiConstances.headers(
                isToken: true,
                token: ApiConstances.getToken(),
              ),
            ),
          ),
          responseHandler: (response) {
            final List<dynamic> coursesList = response.data['courses'];
            return coursesList
                .map((course) => Course.fromJson(course))
                .toList();
          },
        );
  }

  @override
  Future<List<Course>> getFavorites() async {
    return sl.get<ApiCallHandler>().handler(
          apiCall: () => _dio.get(
            ApiConstances.getFavouritesUrl,
            options: Options(
              headers: ApiConstances.headers(
                isToken: true,
                token: ApiConstances.getToken(),
              ),
            ),
          ),
          responseHandler: (response) {
            final List<dynamic> coursesList = response.data['data'];
            return coursesList
                .map((course) => Course.fromJson(course))
                .toList();
          },
        );
  }

  @override
  Future<void> toggleFavorite({required int courseId}) async {
    return sl.get<ApiCallHandler>().handler(
          apiCall: () => _dio.post(
            ApiConstances.toggleFavouriteUrl,
            options: Options(
              headers: ApiConstances.headers(
                isToken: true,
                token: ApiConstances.getToken(),
              ),
            ),
            data: {'course_id': courseId},
          ),
          responseHandler: (response) {
            return;
          },
        );
  }

  @override
  Future<List<Lesson>> getLessons({required int courseId}) async {
    return sl.get<ApiCallHandler>().handler(
          apiCall: () => _dio.get(
            ApiConstances.getLessoneUrl(courseId: courseId),
            options: Options(
              headers: ApiConstances.headers(
                isToken: true,
                token: ApiConstances.getToken(),
              ),
            ),
          ),
          responseHandler: (response) {
            final List lessons = response.data['lessonName'] ?? [];

            return lessons.map((lesson) => Lesson.fromJson(lesson)).toList();
          },
        );
  }

  @override
  Future<List<Course>> getcoursesFromTeacher({required int teacherId}) {
    return sl.get<ApiCallHandler>().handler(
          apiCall: () => _dio.get(
            ApiConstances.getTeacherWithCoursesUrl(teacherId: teacherId),
            options: Options(
              headers: ApiConstances.headers(
                isToken: true,
                token: ApiConstances.getToken(),
              ),
            ),
          ),
          responseHandler: (response) {
            final List<dynamic> courses = response.data['courses'];
            return courses.map((course) => Course.fromJson(course)).toList();
          },
        );
  }

  @override
  Future<List<Teacher>> getTeacherFilter({required int specializationId}) {
    return sl.get<ApiCallHandler>().handler(
          apiCall: () => _dio.get(
            ApiConstances.getTeacherFilterUrl(specializationId: specializationId),
            options: Options(
              headers: ApiConstances.headers(
                isToken: true,
                token: ApiConstances.getToken(),
              ),
            ),
          ),
          responseHandler: (response) {
            final List<dynamic> teachersList = response.data['data'];
            return teachersList
                .map((teacher) => Teacher.fromJson(teacher))
                .toList();
          },
        );
  }

  @override
  Future<List<Course>> getCourseFilter({required String courseType}) {
    return sl.get<ApiCallHandler>().handler(
          apiCall: () => _dio.post(
            ApiConstances.getCourseFilterUrl,
            data: {"type": courseType},
            options: Options(
              headers: ApiConstances.headers(
                isToken: true,
                token: ApiConstances.getToken(),
              ),
            ),
          ),
          responseHandler: (response) {
            final List<dynamic> courseList = response.data['data'];
            return courseList.map((course) => Course.fromJson(course)).toList();
          },
        );
  }

  @override
  Future<List<Course>> getMyCourses() {
    return sl.get<ApiCallHandler>().handler(
          apiCall: () => _dio.get(
            ApiConstances.getCourseHasStudentUrl,
            options: Options(
              headers: ApiConstances.headers(
                isToken: true,
                token: ApiConstances.getToken(),
              ),
            ),
          ),
          responseHandler: (response) {
            final List<dynamic> courseList = response.data['courses'];
            return courseList.map((course) => Course.fromJson(course)).toList();
          },
        );
  }

  @override
  Future<void> requestCourse({required int courseId}) {
    return sl.get<ApiCallHandler>().handler(
          apiCall: () => _dio.get(
            '',
            options: Options(
              headers: ApiConstances.headers(
                isToken: true,
                token: ApiConstances.getToken(),
              ),
            ),
          ),
          responseHandler: (response) {
            return;
          },
        );
  }

  @override
  Future<VideoTime> updateProgress(
      {required int videoId, int? size, int? progressTime}) {
    return sl.get<ApiCallHandler>().handler(
          apiCall: () => _dio.post(
            ApiConstances.updateProgressUrl,
            options: Options(
              headers: ApiConstances.headers(
                isToken: true,
                token: ApiConstances.getToken(),
              ),
            ),
            data: {
              "video_id": videoId,
              "size": size,
              "progress_time": progressTime
            },
          ),
          responseHandler: (response) {
            return VideoTime.fromJson(response.data['Videoprogrees']);
          },
        );
  }
}
