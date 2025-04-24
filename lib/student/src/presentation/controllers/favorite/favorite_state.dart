part of 'favorite_bloc.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState({
    @Default(false) bool loading,
    @Default(false) bool error,
    @Default('') String errorMessage,
    @Default(false) bool isDone,
    @Default(false) bool isEnpty,
    @Default([]) List<Course> courses,
  }) = _FavoriteState;
}