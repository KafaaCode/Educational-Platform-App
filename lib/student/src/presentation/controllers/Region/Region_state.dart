part of 'Region_bloc.dart';

@freezed
class RegionState with _$RegionState {
  const factory RegionState.initial({
    @Default(true) bool loading,
    @Default(false) bool error,
    @Default(false) bool done,
    @Default('') String errorMessage,
    @Default([]) List<Region> regions,
  }) = _Initial;
}
