import 'package:educational_platform_app/student/src/data/models/models.dart';
import 'package:educational_platform_app/student/src/domain/repository/main_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_details_state.dart';
part 'course_details_event.dart';
part 'course_details_bloc.freezed.dart';

class CourseDetailsBloc extends Bloc<CourseDetailsEvent, CourseDetailsState> {
  final BaseMainRepository mainRepository;

  CourseDetailsBloc({required this.mainRepository})
      : super(const CourseDetailsState()) {
    on<_GetLessons>(_getLessonsEvent);
    on<_ToggleFavorite>(_toggleFavoriteEvent);
    on<_InitCourse>(
        (event, emit) => emit(state.copyWith(course: event.course)));
  }
  void _getLessonsEvent(event, emit) async {
    emit(state.copyWith(loading: true));
    print(event.courseId);
    final result = await mainRepository.getLessons(courseId: event.courseId);
    result.fold(
      (l) => emit(state.copyWith(
          loading: false,
          error: true,
          errorMessage: l.message,
          lessons: state.lessons)),
      (r) => emit(state.copyWith(loading: false, isDone: true, lessons: r)),
    );
  }

  void _toggleFavoriteEvent(_ToggleFavorite event, emit) async {
    emit(state.copyWith(
        loading: false,
        course: state.course.copyWith(is_favorite: !state.course.is_favorite)));

    final response =
        await mainRepository.toggleFavorite(courseId: event.course.id);
    response.fold((l) {
      emit(state.copyWith(
          loading: false,
          error: true,
          errorMessage: l.message,
          course:
              state.course.copyWith(is_favorite: state.course.is_favorite)));
    }, (r) {
      emit(state.copyWith(
          loading: false,
          course:
              state.course.copyWith(is_favorite: state.course.is_favorite)));
    });
  }
}
