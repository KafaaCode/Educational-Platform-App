part of 'check_auth_bloc.dart';

@freezed
class CheckAuthEvent with _$CheckAuthEvent {
  const factory CheckAuthEvent.started() = _Started;
  const factory CheckAuthEvent.updateInfo({required User user}) =
      _UpdateInfoEvent;

  const factory CheckAuthEvent.sendData({required User user}) = _SendDataEvent;
}
