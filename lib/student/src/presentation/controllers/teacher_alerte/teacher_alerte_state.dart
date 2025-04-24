part of 'teacher_alerte_bloc.dart';

@freezed
class TeacherAlerteState with _$TeacherAlerteState {
  const factory TeacherAlerteState({
    @Default(false) bool loading,
    @Default(false) bool error,
    @Default('') String errorMessage,
    @Default(false) bool isAuth,
    @Default(false) bool isEmpty,
    @Default([]) List<Teacher> teachers
  }) = _Initial;
  
}