part of 'check_auth_bloc.dart';

@freezed
class CheckAuthEvent with _$CheckAuthEvent {
  const factory CheckAuthEvent.started() = _Started;
  const factory CheckAuthEvent.updateInfo(
      {required User user, @Default(false) bool isSend}) = _UpdateInfoEvent;
  const factory CheckAuthEvent.resgiter({required User user}) = _ResgiterEvent;
  const factory CheckAuthEvent.login(
      {required String eamil, required String password}) = _LoginEvent;
  const factory CheckAuthEvent.getRegion() = _getRegion;
}
