part of 'favorite_bloc.dart';

@freezed
class FavoriteEvent with _$FavoriteEvent {
  const factory FavoriteEvent.getFavorites() = _GetFavorites;
  const factory FavoriteEvent.toggleFavorite({required int courseId}) = _ToggleFavorite;
}