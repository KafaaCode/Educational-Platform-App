import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:educational_platform_app/student/src/data/models/models.dart';
import 'package:educational_platform_app/student/src/domain/repository/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'check_auth_event.dart';
part 'check_auth_state.dart';
part 'check_auth_bloc.freezed.dart';

class CheckAuthBloc extends HydratedBloc<CheckAuthEvent, CheckAuthState> {
  final BaseAuthRepository baseAuthRepository;

  CheckAuthBloc(this.baseAuthRepository) : super(_CheckAuthState()) {
    on<CheckAuthEvent>((event, emit) async {
      await event.map(
        logout: (_Logout logout) async {
          emit(state.copyWith(
              isAuth: false,
              auth: null,
              error: false,
              user: const User(id: 0, email: '', name: '', role: ''),
              regions: null,
              loading: false,
              isEnpty: false,
              errorMessage: ''));
          await HydratedBloc.storage.clear();
        },
        refreshToken: (_RefreshToken v) async {},
        started: (_Started v) async {
          if (state.auth == null) {
            emit(state.copyWith(
                isAuth: false, loading: true, error: false, isEnpty: false));
            final response = await baseAuthRepository.getRegions();

            response.fold(
                (l) => emit(state.copyWith(
                      isAuth: false,
                      loading: false,
                      error: true,
                      errorMessage: l.message,
                    )), (r) {
              emit(state.copyWith(
                  isAuth: false,
                  loading: false,
                  error: false,
                  isEnpty: false,
                  regions: r));
            });
          } else {
            User user = User(
                id: 0,
                name: state.auth!.user.name,
                email: state.auth!.user.email,
                role: state.auth!.user.role,
                phoneNumber: state.auth!.student.phoneNumber,
                academic_stage: Map<String, String>.from(
                    state.auth!.student.academic_stage.toJson()),
                region: state.auth!.student.region.name,
                gander: state.auth!.student.gander);

            if (!emit.isDone) {
              emit(state.copyWith(
                  isAuth: true,
                  loading: false,
                  error: false,
                  auth: state.auth,
                  user: user,
                  isEnpty: false));
            }
          }
        },
        updateInfo: (_UpdateInfoEvent v) async {
          if (v.isSend) {
            print('updaeeeeeeeee');
          } else {
            emit(state.copyWith(
                user: v.user,
                isAuth: false,
                error: false,
                loading: false,
                isEnpty: true));
          }
        },
        login: (_LoginEvent v) async {
          emit(state.copyWith(
              isAuth: false, loading: true, error: false, isEnpty: false));
          final response = await baseAuthRepository.login(
              email: v.eamil, password: v.password);

          response.fold(
            (l) => emit(state.copyWith(
              isAuth: false,
              loading: false,
              error: true,
              errorMessage: l.message,
            )),
            (r) => emit(state.copyWith(
                isAuth: true,
                loading: false,
                error: false,
                isEnpty: false,
                auth: r)),
          );
        },
        resgiter: (_ResgiterEvent v) async {
          emit(state.copyWith(
              isAuth: false, loading: true, error: false, isEnpty: false));
          final response = await baseAuthRepository.register(user: v.user);

          response.fold(
            (l) => emit(state.copyWith(
              isAuth: false,
              loading: false,
              error: true,
              errorMessage: l.message,
            )),
            (r) => emit(state.copyWith(
                isAuth: true, loading: false, error: false, auth: r)),
          );
        },
      );
    }, transformer: droppable());
  }

  @override
  CheckAuthState? fromJson(Map<String, dynamic> json) {
    try {
      return CheckAuthState(
        isAuth: json['isAuth'] as bool? ?? false,
        loading: json['loading'] as bool? ?? false,
        auth: Auth.fromJson(json['auth'] as Map<String, dynamic>),
        regions: json['regions'] != null
            ? List<Region>.from(
                (json['regions'] as List).map((x) => Region.fromJson(x)))
            : null,
      );
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(CheckAuthState state) {
    return {
      'isAuth': state.isAuth,
      'loading': state.loading,
      'auth': state.auth?.toJson(),
      'regions': state.regions?.map((region) => region.toJson()).toList(),
    };
  }
}
