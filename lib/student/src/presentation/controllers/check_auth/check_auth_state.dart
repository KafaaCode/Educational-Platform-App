part of 'check_auth_bloc.dart';

@freezed
class CheckAuthState with _$CheckAuthState {
  const factory CheckAuthState({
    @Default(true) bool loading,
    @Default(false) bool error,
    @Default(false) bool isAuth,
    @Default(false) bool isEnpty,
    @Default('') String errorMessage,
    @Default(User(
      id: 0,
      name: '',
      email: '',
      role: '',
      academic_stage: {'stage': '', 'type': ""},
    ))
    User user,
    Auth? auth,
  }) = _CheckAuthState;
}
