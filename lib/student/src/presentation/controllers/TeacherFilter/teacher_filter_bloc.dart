import 'package:educational_platform_app/student/src/data/models/models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:educational_platform_app/student/src/domain/repository/main_repository.dart';

part 'teacher_filter_event.dart';
part 'teacher_filter_state.dart';
part 'teacher_filter_bloc.freezed.dart';

class TeacherFilterBloc extends Bloc<TeacherFilterEvent, TeacherFilterState> {
  final BaseMainRepository repository;

  TeacherFilterBloc({required this.repository})
      : super(const TeacherFilterState()) {
    on<_FetchTeachers>((event, emit) async {
      await event.when(
        fetchTeachers: (specializationId) =>
            _handleFetchTeachers(specializationId, emit),
      );
    });
  }

  Future<void> _handleFetchTeachers(
      int specializationId, Emitter<TeacherFilterState> emit) async {
    emit(state.copyWith(loading: true));

    final result = await repository.getTeacherFilter(
      specializationId: specializationId,
    );

    result.fold(
      (failure) => emit(state.copyWith(
        loading: false,
        error: true,
        errorMessage: failure.message,
        teachers: state.teachers,
      )),
      (teachers) => emit(state.copyWith(
        loading: false,
        error: false,
        teachers: teachers,
      )),
    );
  }
}
