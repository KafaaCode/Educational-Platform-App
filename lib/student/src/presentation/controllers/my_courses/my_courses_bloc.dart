import 'package:educational_platform_app/student/src/data/models/models.dart';
import 'package:educational_platform_app/student/src/domain/repository/main_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_courses_state.dart';
part 'my_courses_event.dart';
part 'my_courses_bloc.freezed.dart';

class MyCoursesBloc extends Bloc<MyCoursesEvent, MyCoursesState> {
  final BaseMainRepository repository;
  MyCoursesBloc(this.repository) : super(const _Initial()) {
    on<_GetMyCourses>(_getMyCoursesEvent);
  }
  void _getMyCoursesEvent(event, emit) async {
    emit(state.copyWith(isLoading: true));
    final result = await repository.getMyCourses();
    result.fold(
      (failure) {
        emit(state.copyWith(
          isLoading: false,
          isError: true,
          errorMessage: failure.message,
        ));
      },
      (courses) {
        if (courses.isNotEmpty) {
          emit(state.copyWith(
            isLoading: false,
            courses: courses,
            isSuccess: true,
          ));
        } else {
          emit(state.copyWith(
            isLoading: false,
            isEmpty: true,
          ));
        }
      },
    );
  }
}
