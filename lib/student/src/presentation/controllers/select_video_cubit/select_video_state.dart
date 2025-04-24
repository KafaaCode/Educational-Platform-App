part of 'select_video_cubit.dart';

@freezed
class SelectVideoState with _$SelectVideoState {
  const factory SelectVideoState.initial({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default(false) bool isSuccess,
    @Default(true) bool isEmpty,
    @Default(false) bool isfullScreen,
    @Default(Video(id: 0, title: "", linkVideo: '', attached: '')) Video videos,
    VideoTime? videoTime
  }) = _Initial;
}
