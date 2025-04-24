import 'package:educational_platform_app/core/utils/typedef.dart';
import 'package:educational_platform_app/student/src/data/models/models.dart';

abstract class BaseMainRepository {
  ResultFuture<List<Course>> getCourses();
  ResultFuture<List<Teacher>> getTeacherAlerte();
  ResultFuture<List<Course>> getOffersDiscounts();
  ResultFuture<List<Course>> getFavorites();
  ResultFuture<void> toggleFavorite({required int courseId});
  ResultFuture<List<Lesson>> getLessons({required int courseId});
  ResultFuture<List<Course>> getcoursesFromTeacher({required int teacherId});
  ResultFuture<List<Teacher>> getTeacherFilter({required int specializationId});
  ResultFuture<List<Course>> getCourseFilter({required String courseType});
  ResultFuture<void> requestCourse({required int courseId});
  ResultFuture<List<Course>> getMyCourses();
  ResultFuture<VideoTime> updateProgress({required int videoId, int? size, int? progressTime});
}
