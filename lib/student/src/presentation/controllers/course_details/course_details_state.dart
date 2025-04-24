part of 'course_details_bloc.dart';

@freezed
class CourseDetailsState with _$CourseDetailsState {
  const factory CourseDetailsState({
    @Default(false) bool loading,
    @Default(false) bool error,
    @Default('') String errorMessage,
    @Default(false) bool isDone,
    @Default(false) bool isEnpty,
    @Default(Course(
      id: 0,
      name: '',
      is_enrolled: false,
      evaluationRate: 0,
      price: 0,
      discount: 0,
      details: ' ',
      academic_stage: AcademicStage(),
      teacher: Teacher(
          id: 0,
          gander: '',
          phoneNumber: '',
          region: Region(id: 0, name: ''),
          specialization: Specialization(
            id: 0,
            name: '',
          ),
          evaluationRate: 0,
          is_banned: 0,
          user: User(id: 0, name: '', email: '', role: '')),
      countVideos: 0,
      is_favorite: false,
    ))
    Course course,
    @Default([]) List<Lesson> lessons,
  }) = _CourseDetailsState;
}
