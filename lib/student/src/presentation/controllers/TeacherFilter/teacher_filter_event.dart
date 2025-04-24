 part of 'teacher_filter_bloc.dart';

@freezed
class TeacherFilterEvent with _$TeacherFilterEvent {
  const factory TeacherFilterEvent.fetchTeachers({
    required int specializationId, 
  }) = _FetchTeachers;
}  