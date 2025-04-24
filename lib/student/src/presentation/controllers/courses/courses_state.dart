part of 'courses_bloc.dart';

@freezed
class CoursesState with _$CoursesState {
  const factory CoursesState({
    @Default(false) bool loading,
    @Default(false) bool error,
    @Default('') String errorMessage,
    @Default(false) bool isAuth,
    @Default(false) bool isEnpty,
    @Default([]) List<Course> courses,
  }) = _Initial;
}
