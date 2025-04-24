import 'package:educational_platform_app/student/src/data/models/models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:educational_platform_app/student/src/domain/repository/main_repository.dart';

part 'course_filter_event.dart';
part 'course_filter_state.dart';
part 'course_filter_bloc.freezed.dart';

class CourseFilterBloc extends Bloc<CourseFilterEvent, CourseFilterState> {
  final BaseMainRepository repository;

  CourseFilterBloc({required this.repository})
      : super(const CourseFilterState()) {
    on<_FetchCourses>((event, emit) async {
      await _handleFetchCourses(event.CourseType, emit);
    });
  }

  Future<void> _handleFetchCourses(
      String courseType, Emitter<CourseFilterState> emit) async {
    emit(state.copyWith(loading: true));

    final result = await repository.getCourseFilter(courseType: courseType);

    result.fold(
      (failure) => emit(state.copyWith(
        loading: false,
        error: true,
        errorMessage: failure.message,
      )),
      (courses) => emit(state.copyWith(
        loading: false,
        error: false,
        courses: courses,
      )),
    );
  }
}
