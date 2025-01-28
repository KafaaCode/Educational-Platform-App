part of 'check_auth_bloc.dart';

@freezed
class CheckAuthState with _$CheckAuthState {
  const factory CheckAuthState.initial({
    @Default(false) bool loading,
    @Default(false) bool error,
    @Default(false) bool isAuth,
    @Default('') String errorMessage,
  }) = _Initial;
}
