part of 'get_courses_from_teacher_bloc.dart';

@freezed
class GetCoursesFromTeacherEvent with _$GetCoursesFromTeacherEvent {
  const factory GetCoursesFromTeacherEvent.getCoursesFromTeacher({
    required int teacherId,
  }) = GetCoursesFromTeacher;
}