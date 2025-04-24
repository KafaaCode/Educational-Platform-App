part of 'upload_profile_cubit.dart';

@freezed
class UploadProfileState with _$UploadProfileState {
  const factory UploadProfileState.initial({
    @Default(false) bool loading,
    @Default(false) bool error,
    @Default(true) bool isDone,
    @Default('') String errorMessage,
    File? image,
  }) = _Initial;
}
