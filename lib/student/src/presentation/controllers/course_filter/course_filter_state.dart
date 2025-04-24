part of 'course_filter_bloc.dart';




@freezed
class CourseFilterState with _$CourseFilterState {
  const factory CourseFilterState({
     @Default(false) bool loading,
    @Default(false) bool error,
    @Default('') String errorMessage,
    @Default(false) bool isAuth,
    @Default(false) bool isEmpty,
     @Default([]) List<Course> courses
    }) = _Initial;

} 