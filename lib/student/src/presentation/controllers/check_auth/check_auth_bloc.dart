import 'package:bloc/bloc.dart';
import 'package:educational_platform_app/student/src/data/models/models.dart';
import 'package:educational_platform_app/student/src/domain/repository/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'check_auth_event.dart';
part 'check_auth_state.dart';
part 'check_auth_bloc.freezed.dart';

class CheckAuthBloc extends HydratedBloc<CheckAuthEvent, CheckAuthState> {
  final BaseAuthRepository baseAuthRepository;

  CheckAuthBloc(this.baseAuthRepository) : super(_Initial()) {
    on<CheckAuthEvent>((event, emit) async {
      await event.map(
        getRegion: (_getRegion value) async {},
        started: (_Started value) async {
          emit(state.copyWith(isAuth: false, loading: true, error: false));
          if (state.user.name == '') {
            final response = await baseAuthRepository.getRegions();
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
                    isAuth: false, loading: false, error: false, regions: r));
              },
            );
          }
        },
        updateInfo: (_UpdateInfoEvent updateInfo) async {
          emit(state.copyWith(
            user: updateInfo.user,
            isAuth: false,
            error: false,
            loading: false,
          ));
        },
        login: (_LoginEvent value) async {
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
        resgiter: (_ResgiterEvent value) async {
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

  @override
  CheckAuthState? fromJson(Map<String, dynamic> json) {
    try {
      return CheckAuthState.initial(
        isAuth: json['isAuth'] as bool? ?? false,
        loading: json['loading'] as bool? ?? false,
        user: User.fromJson(json['user'] as Map<String, dynamic>),
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
      'user': state.user.toJson(),
      'regions': state.regions?.map((region) => region.toJson()).toList(),
    };
  }
}
