 part of 'course_filter_bloc.dart';

@freezed
class CourseFilterEvent with _$CourseFilterEvent {
  const factory CourseFilterEvent.fetchCourses({
    required String CourseType 
  }) = _FetchCourses;
}  