 part of 'teacher_filter_bloc.dart';

@freezed
class TeacherFilterState with _$TeacherFilterState {
  const factory TeacherFilterState({
     @Default(false) bool loading,
    @Default(false) bool error,
    @Default('') String errorMessage,
    @Default(false) bool isAuth,
    @Default(false) bool isEmpty,
     @Default([]) List<Teacher> teachers
    }) = _Initial;

} 