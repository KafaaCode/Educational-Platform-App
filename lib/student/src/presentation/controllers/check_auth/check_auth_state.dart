part of 'check_auth_bloc.dart';

@freezed
class CheckAuthState with _$CheckAuthState {
  factory CheckAuthState.initial({
    @Default(false) bool loading,
    @Default(false) bool error,
    @Default(false) bool isAuth,
    @Default(User(
      id: 0,
      name: '',
      email: '',
      role: '',
      gander: '',
      region: '',
      academic_stage: {'stage': '', 'type': ""},
    ))
    User user,
    List<Region>? regions,
    Auth? auth,
    @Default('') String errorMessage,
  }) = _Initial;
  // const factory CheckAuthState.getRegion({required User user}) = _GetRegion;
}
