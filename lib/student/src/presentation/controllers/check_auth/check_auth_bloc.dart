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

  CheckAuthBloc(this.baseAuthRepository) : super(const _CheckAuthState()) {
    on<_Started>(_onStartedEvent, transformer: droppable());
    on<_LoginEvent>(_onLoginEvent);
    on<_ResgiterEvent>(_onResgiterEvent);
    on<_Logout>(_onLogoutEvent);
    on<_UpdateProfile>(_onUpdateProfileEvent);
    on<_UpdateInfoEvent>(_onUpdateInfoEventEvent);
  }

  //---------------- Events ---------
  Future<void> _onStartedEvent(
      _Started event, Emitter<CheckAuthState> emit) async {
    if (state.auth == null) {
      emit(state.copyWith(
          isAuth: false, loading: true, error: false, isEnpty: false));
    } else {
      emit(state.copyWith(
          isAuth: true, loading: false, error: false, isEnpty: false));
    }
  }

  Future<void> _onLoginEvent(
      _LoginEvent event, Emitter<CheckAuthState> emit) async {
    emit(state.copyWith(
      isAuth: false,
      loading: true,
      error: false,
      isEnpty: false,
    ));

    final response = await baseAuthRepository.login(
      email: event.email,
      password: event.password,
    );

    await response.fold(
      (l) async {
        await HydratedBloc.storage.clear();
        emit(state.copyWith(
          isAuth: false,
          loading: false,
          error: true,
          errorMessage: l.message,
        ));
      },
      (r) async {
        await HydratedBloc.storage.write('token', r.token);
        print(r.user.toJson());
        User user = state.user.copyWith(
            id: r.user.id,
            name: r.user.name,
            email: r.user.email,
            role: r.user.role,
            phoneNumber: r.student?.phoneNumber,
            image: r.student?.imagePath,
            academic_stage: state.auth?.student?.academic_stage.toJson(),
            region: r.student?.region.name,
            gander: r.student?.gander);
        emit(state.copyWith(
          isAuth: true,
          loading: false,
          error: false,
          isEnpty: false,
          user: user,
          auth: r,
        ));
      },
    );
  }

  Future<void> _onResgiterEvent(
      _ResgiterEvent event, Emitter<CheckAuthState> emit) async {
    emit(state.copyWith(
      isAuth: false,
      loading: true,
      error: false,
      isEnpty: false,
    ));

    final response = await baseAuthRepository.register(user: event.user);

    await response.fold(
      (l) async {
        await HydratedBloc.storage.clear();
        emit(state.copyWith(
          isAuth: false,
          loading: false,
          error: true,
          errorMessage: l.message,
        ));
      },
      (r) async {
        await HydratedBloc.storage.write('token', r.token);
        User user = state.user.copyWith(
            id: r.user.id,
            name: r.user.name,
            email: r.user.email,
            role: r.user.role,
            phoneNumber: r.student?.phoneNumber,
            image: r.student?.imagePath,
            academic_stage: state.auth?.student?.academic_stage.toJson(),
            region: r.student?.region.name,
            gander: r.student?.gander);

        emit(state.copyWith(
          isAuth: true,
          loading: false,
          error: false,
          auth: r,
          user: user,
        ));
      },
    );
  }

  // logined
  Future<void> _onLogoutEvent(
      _Logout event, Emitter<CheckAuthState> emit) async {
    final response = await baseAuthRepository.logout();
    response.fold((l) async {
      emit(state.copyWith(
        isAuth: false,
        auth: null,
        error: true,
        user: const User(id: 0, email: '', name: '', role: ''),
        loading: false,
        isEnpty: false,
        errorMessage: l.message,
      ));
      await HydratedBloc.storage.clear();
    }, (r) async {
      emit(state.copyWith(
        isAuth: false,
        auth: null,
        error: false,
        user: const User(id: 0, email: '', name: '', role: ''),
        loading: false,
        isEnpty: false,
        errorMessage: '',
      ));
      await HydratedBloc.storage.clear();
    });
  }

  Future<void> _onUpdateProfileEvent(
      _UpdateProfile event, Emitter<CheckAuthState> emit) async {
    final res = await baseAuthRepository.updateProfile(path: event.path);
    res.fold((l) {
      emit(state.copyWith(
          isAuth: true,
          error: true,
          loading: false,
          isEnpty: true,
          errorMessage: l.message));
    }, (r) {
      print(r.user);

      User user = state.user.copyWith(
          id: r.user.id,
          name: r.user.name,
          email: r.user.email,
          role: r.user.role,
          phoneNumber: r.student.phoneNumber,
          image: r.student.imagePath,
          academic_stage: state.auth?.student?.academic_stage.toJson(),
          region: r.student.region.name,
          gander: r.student.gander);

      emit(state.copyWith(
          user: user,
          isAuth: true,
          error: false,
          loading: false,
          isEnpty: true));
    });
  }

  Future<void> _onUpdateInfoEventEvent(
      _UpdateInfoEvent event, Emitter<CheckAuthState> emit) async {
    if (event.isSend) {
      final res = await baseAuthRepository.update(user: event.user);
      res.fold((l) {
        emit(state.copyWith(
            isAuth: true,
            error: true,
            loading: false,
            isEnpty: true,
            errorMessage: l.message));
      }, (r) {
        User user = state.user.copyWith(
            id: r.user.id,
            name: r.user.name,
            email: r.user.email,
            role: r.user.role,
            phoneNumber: r.student.phoneNumber,
            image: r.student.imagePath,
            academic_stage: r.student.academic_stage.toJson(),
            region: r.student.region.name,
            gander: r.student.gander);
        emit(state.copyWith(
            user: user,
            isAuth: true,
            error: false,
            loading: false,
            isEnpty: true));
      });
    } else {
      print("add data");
      emit(state.copyWith(
          user: event.user,
          isAuth: false,
          error: false,
          loading: false,
          isEnpty: true));
    }
  }

  // ------------ HydratedBloc ------------
  @override
  CheckAuthState? fromJson(Map<String, dynamic> json) {
    try {
      return CheckAuthState(
        isAuth: json['isAuth'] as bool,
        loading: json['loading'] as bool,
        error: json['error'] as bool,
        isEnpty: json['isEnpty'] as bool,
        errorMessage: json['errorMessage'] ?? '' as String?,
        auth: json['auth'] != null
            ? Auth.fromJson(json['auth'] as Map<String, dynamic>)
            : null,
        user: json['user'] != null
            ? User.fromJson(json['user'] as Map<String, dynamic>)
            : const User(id: 0, email: '', name: '', role: ''),
      );
    } catch (e) {
      print('Error in fromJson: $e');
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(CheckAuthState state) {
    try {
      return {
        'isAuth': state.isAuth,
        'loading': state.loading,
        'error': state.error,
        'isEnpty': state.isEnpty,
        'errorMessage': state.errorMessage,
        'auth': state.auth?.toJson(),
        'user': state.user.toJson(),
      };
    } catch (e) {
      print('Error in toJson: $e');
      return null;
    }
  }
}
