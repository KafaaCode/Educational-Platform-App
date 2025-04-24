part of 'my_courses_bloc.dart';

@freezed
class MyCoursesState with _$MyCoursesState {
  const factory MyCoursesState({
    @Default([]) List<Course> courses,
    @Default(true) bool isLoading,
    @Default(false) bool isError,
    @Default(false) bool isEmpty,
    @Default('') String errorMessage,
    @Default(false) bool isSuccess,
  }) = _Initial;
}
