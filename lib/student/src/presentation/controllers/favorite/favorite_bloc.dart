import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:educational_platform_app/core/services/services_locator.dart';
import 'package:educational_platform_app/student/src/data/models/models.dart';
import 'package:educational_platform_app/student/src/domain/repository/main_repository.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/courses/courses_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_state.dart';
part 'favorite_event.dart';
part 'favorite_bloc.freezed.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  final BaseMainRepository repository;
  FavoriteBloc(this.repository) : super(const FavoriteState()) {
    on<FavoriteEvent>((event, emit) async {
      await event.map(getFavorites: (_GetFavorites e) async {
        emit(state.copyWith(loading: true));
        final response = await repository.getFavorites();
        response.fold(
            (l) => emit(state.copyWith(
                loading: false,
                error: true,
                errorMessage: l.message,
                courses: state.courses)),
            (r) =>
                emit(state.copyWith(loading: false, isDone: true, courses: r)));
      }, toggleFavorite: (_ToggleFavorite e) async {
        emit(state.copyWith(loading: true));
        final response = await repository.toggleFavorite(courseId: e.courseId);
        response.fold(
            (l) => emit(state.copyWith(
                loading: false, error: true, errorMessage: l.message)), (r) {
          CoursesBloc(sl()).add(const CoursesEvent.getCourses());
        });
      });
    }, transformer: restartable());
  }
}
