import 'package:educational_platform_app/student/src/data/models/models.dart';
import 'package:educational_platform_app/student/src/domain/repository/main_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'courses_state.dart';
part 'courses_event.dart';
part 'courses_bloc.freezed.dart';

class CoursesBloc extends HydratedBloc<CoursesEvent, CoursesState> {
  final BaseMainRepository baseMainRepository;

  CoursesBloc(this.baseMainRepository) : super(const CoursesState()) {
    on<CoursesEvent>((event, emit) async {
      await event.map(getCourses: (value) async {
        emit(state.copyWith(
            error: false, isAuth: false, isEnpty: false, loading: true));

        final response = await baseMainRepository.getCourses();
        print(response);

        response.fold(
            (l) => emit(state.copyWith(
                loading: false,
                error: true,
                errorMessage: l.message,
                courses: state.courses)), (r) {
          emit(state.copyWith(
              loading: false,
              error: false,
              isAuth: true,
              isEnpty: false,
              courses: r));
        });
      });
    });
  }

  @override
  CoursesState? fromJson(Map<String, dynamic> json) {
    return CoursesState(
      courses:
          (json['courses'] as List).map((e) => Course.fromJson(e)).toList(),
      loading: json['loading'],
      isEnpty: json['isEnpty'],
      isAuth: json['isAuth'],
    );
  }

  @override
  Map<String, dynamic>? toJson(CoursesState state) {
    return {
      'courses': state.courses.map((e) => e.toJson()).toList(),
      'loading': state.loading,
      'isEnpty': state.isEnpty,
      'isAuth': state.isAuth,
    };
  }
}
