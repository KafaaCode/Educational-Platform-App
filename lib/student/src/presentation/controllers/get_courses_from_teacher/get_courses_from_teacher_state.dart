part of 'get_courses_from_teacher_bloc.dart';

@freezed
class GetCoursesFromTeacherState with _$GetCoursesFromTeacherState {
  const factory GetCoursesFromTeacherState.initial({
    @Default([]) List<Course> courses,
    @Default(true) bool isLoading,
    @Default(false) bool isError,
    @Default('') String errorMessage,
    @Default(false) bool isSuccess,

  }) = _Initial;
}