import 'package:bloc/bloc.dart';
import 'package:educational_platform_app/student/src/data/models/models.dart';
import 'package:educational_platform_app/student/src/domain/repository/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_auth_event.dart';
part 'check_auth_state.dart';
part 'check_auth_bloc.freezed.dart';

class CheckAuthBloc extends Bloc<CheckAuthEvent, CheckAuthState> {
  final BaseAuthRepository baseAuthRepository;

  CheckAuthBloc(this.baseAuthRepository) : super(_Initial()) {
    on<CheckAuthEvent>((event, emit) async {
      await event.map(
        started: (_Started value) async {
          emit(state.copyWith(isAuth: false, loading: false, error: false));
        },
        updateInfo: (_UpdateInfoEvent updateInfo) async {
          emit(state.copyWith(
            user: updateInfo.user,
            isAuth: false,
            error: false,
            loading: false,
          ));
        },
        login: (_loginEvent value) async {
          emit(state.copyWith(isAuth: false, loading: true, error: false));
          final response = await baseAuthRepository.login(
              email: value.eamil, password: value.password);
          await response.fold(
            (l) async {
              emit(state.copyWith(
                isAuth: false,
                loading: false,
                error: true,
                errorMessage: l.message,
              ));
            },
            (r) async {
              emit(state.copyWith(
                isAuth: true,
                loading: false,
                error: false,
                user: r.user,
              ));
            },
          );
        },
        resgiter: (_resgiterEvent value) async {
          emit(state.copyWith(isAuth: false, loading: true, error: false));
          final response = await baseAuthRepository.register(user: value.user);
          await response.fold(
            (l) async {
              emit(state.copyWith(
                isAuth: false,
                loading: false,
                error: true,
                errorMessage: l.message,
              ));
            },
            (r) async {
              emit(state.copyWith(
                isAuth: true,
                loading: false,
                error: false,
                user: r.user,
              ));
            },
          );
        },
      );
    });
  }
}
