import 'package:educational_platform_app/student/src/data/models/models.dart';
import 'package:educational_platform_app/student/src/domain/repository/main_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_courses_from_teacher_state.dart';
part 'get_courses_from_teacher_event.dart';
part 'get_courses_from_teacher_bloc.freezed.dart';

class GetCoursesFromTeacherBloc
    extends Bloc<GetCoursesFromTeacherEvent, GetCoursesFromTeacherState> {
  final BaseMainRepository mainRepository;
  GetCoursesFromTeacherBloc(this.mainRepository)
      : super(const GetCoursesFromTeacherState.initial()) {
    on<GetCoursesFromTeacher>(_onGetCorsesFromTeacherEvetn);
  }

  Future<void> _onGetCorsesFromTeacherEvetn(
    GetCoursesFromTeacher event,
    Emitter<GetCoursesFromTeacherState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final result =
        await mainRepository.getcoursesFromTeacher(teacherId: event.teacherId);
    result.fold(
      (failure) {
        emit(state.copyWith(
          isLoading: false,
          isError: true,
          errorMessage: failure.message,
        ));
      },
      (courses) {
        emit(state.copyWith(
          isLoading: false,
          courses: courses,
          isSuccess: true,
        ));
      },
    );
  }
}
