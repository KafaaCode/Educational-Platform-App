import 'package:educational_platform_app/student/src/data/models/models.dart';
import 'package:educational_platform_app/student/src/domain/repository/main_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'teacher_alerte_state.dart';
part 'teacher_alerte_event.dart';
part 'teacher_alerte_bloc.freezed.dart';

class TeacherAlerteBloc
    extends HydratedBloc<TeacherAlerteEvent, TeacherAlerteState> {
  final BaseMainRepository baseMainRepository;

  TeacherAlerteBloc(this.baseMainRepository)
      : super(const TeacherAlerteState()) {
    on<TeacherAlerteEvent>((event, emit) async {
      await event.map(
        getTeacherAlertes: (value) async {
          emit(state.copyWith(
              error: false, isAuth: false, isEmpty: false, loading: true));

          final response = await baseMainRepository.getTeacherAlerte();
          if (!emit.isDone) {
            response.fold(
                (l) => emit(state.copyWith(
                    loading: false,
                    error: true,
                    errorMessage: l.message,
                    teachers: state.teachers)), (r) {
              emit(state.copyWith(
                  loading: false,
                  error: false,
                  isAuth: true,
                  isEmpty: false,
                  teachers: r));
            });
          }
        },
      );
    });
  }

  @override
  TeacherAlerteState? fromJson(Map<String, dynamic> json) {
    try {
      return TeacherAlerteState(
        loading: json['loading'] as bool? ?? false,
        error: json['error'] as bool? ?? false,
        errorMessage: json['errorMessage'] as String? ?? '',
        isAuth: json['isAuth'] as bool? ?? false,
        isEmpty: json['isEnpty'] as bool? ?? false,
        teachers: (json['techer'] as List<dynamic>?)
                ?.map((e) => Teacher.fromJson(e as Map<String, dynamic>))
                .toList() ??
            [],
      );
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(TeacherAlerteState state) {
    try {
      return {
        'loading': state.loading,
        'error': state.error,
        'errorMessage': state.errorMessage,
        'isAuth': state.isAuth,
        'isEnpty': state.isEmpty,
        'techer': state.teachers.map((e) => e.toJson()).toList(),
      };
    } catch (_) {
      return null;
    }
  }
}
