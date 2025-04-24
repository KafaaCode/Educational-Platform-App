part of 'check_auth_bloc.dart';

@freezed
class CheckAuthEvent with _$CheckAuthEvent {
  const factory CheckAuthEvent.started() = _Started;
  const factory CheckAuthEvent.logout() = _Logout;
  const factory CheckAuthEvent.refreshToken() = _RefreshToken;
  const factory CheckAuthEvent.refresh() = _Refresh;
  const factory CheckAuthEvent.updateInfo(
      {required User user, @Default(false) bool isSend}) = _UpdateInfoEvent;
  const factory CheckAuthEvent.updateProfile({required String path}) =
      _UpdateProfile;
  const factory CheckAuthEvent.resgiter({required User user}) = _ResgiterEvent;
  const factory CheckAuthEvent.login(
      {required String email, required String password}) = _LoginEvent;
}
