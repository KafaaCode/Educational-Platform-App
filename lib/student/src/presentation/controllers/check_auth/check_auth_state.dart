part of 'check_auth_bloc.dart';

@freezed
class CheckAuthState with _$CheckAuthState {
  factory CheckAuthState.initial({
    @Default(false) bool loading,
    @Default(false) bool error,
    @Default(false) bool isAuth,
    @Default(User(
      id: '0',
      name: '',
      email: '',
      role: '',
      gander: '',
      region: '',
      academicStage: {'stage': '', 'type': ""},
    ))
    User user,
    @Default('') String errorMessage,
  }) = _Initial;
  // const factory CheckAuthState({required User user}) = _UpdateInfo;
}
