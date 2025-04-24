part of 'course_details_bloc.dart';

@freezed
class CourseDetailsEvent with _$CourseDetailsEvent {
  const factory CourseDetailsEvent.initCourse({required Course course}) = _InitCourse;
  const factory CourseDetailsEvent.getLessons({required int courseId}) =
      _GetLessons;
  const factory CourseDetailsEvent.requestCourse({required int courseId}) =
      _RequestCourse;
  const factory CourseDetailsEvent.toggleFavorite({required Course course}) =
      _ToggleFavorite;
}
