// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Region_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegionState {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<Region> get regions => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool loading, bool error, bool done,
            String errorMessage, List<Region> regions)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool loading, bool error, bool done, String errorMessage,
            List<Region> regions)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool loading, bool error, bool done, String errorMessage,
            List<Region> regions)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of RegionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegionStateCopyWith<RegionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionStateCopyWith<$Res> {
  factory $RegionStateCopyWith(
          RegionState value, $Res Function(RegionState) then) =
      _$RegionStateCopyWithImpl<$Res, RegionState>;
  @useResult
  $Res call(
      {bool loading,
      bool error,
      bool done,
      String errorMessage,
      List<Region> regions});
}

/// @nodoc
class _$RegionStateCopyWithImpl<$Res, $Val extends RegionState>
    implements $RegionStateCopyWith<$Res> {
  _$RegionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? done = null,
    Object? errorMessage = null,
    Object? regions = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      regions: null == regions
          ? _value.regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<Region>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $RegionStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool error,
      bool done,
      String errorMessage,
      List<Region> regions});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RegionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? done = null,
    Object? errorMessage = null,
    Object? regions = null,
  }) {
    return _then(_$InitialImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      regions: null == regions
          ? _value._regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<Region>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.loading = true,
      this.error = false,
      this.done = false,
      this.errorMessage = '',
      final List<Region> regions = const []})
      : _regions = regions;

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool error;
  @override
  @JsonKey()
  final bool done;
  @override
  @JsonKey()
  final String errorMessage;
  final List<Region> _regions;
  @override
  @JsonKey()
  List<Region> get regions {
    if (_regions is EqualUnmodifiableListView) return _regions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_regions);
  }

  @override
  String toString() {
    return 'RegionState.initial(loading: $loading, error: $error, done: $done, errorMessage: $errorMessage, regions: $regions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._regions, _regions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, error, done,
      errorMessage, const DeepCollectionEquality().hash(_regions));

  /// Create a copy of RegionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool loading, bool error, bool done,
            String errorMessage, List<Region> regions)
        initial,
  }) {
    return initial(loading, error, done, errorMessage, regions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool loading, bool error, bool done, String errorMessage,
            List<Region> regions)?
        initial,
  }) {
    return initial?.call(loading, error, done, errorMessage, regions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool loading, bool error, bool done, String errorMessage,
            List<Region> regions)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(loading, error, done, errorMessage, regions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RegionState {
  const factory _Initial(
      {final bool loading,
      final bool error,
      final bool done,
      final String errorMessage,
      final List<Region> regions}) = _$InitialImpl;

  @override
  bool get loading;
  @override
  bool get error;
  @override
  bool get done;
  @override
  String get errorMessage;
  @override
  List<Region> get regions;

  /// Create a copy of RegionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRegions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRegions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRegions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRegions value) getRegions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRegions value)? getRegions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRegions value)? getRegions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionEventCopyWith<$Res> {
  factory $RegionEventCopyWith(
          RegionEvent value, $Res Function(RegionEvent) then) =
      _$RegionEventCopyWithImpl<$Res, RegionEvent>;
}

/// @nodoc
class _$RegionEventCopyWithImpl<$Res, $Val extends RegionEvent>
    implements $RegionEventCopyWith<$Res> {
  _$RegionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetRegionsImplCopyWith<$Res> {
  factory _$$GetRegionsImplCopyWith(
          _$GetRegionsImpl value, $Res Function(_$GetRegionsImpl) then) =
      __$$GetRegionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRegionsImplCopyWithImpl<$Res>
    extends _$RegionEventCopyWithImpl<$Res, _$GetRegionsImpl>
    implements _$$GetRegionsImplCopyWith<$Res> {
  __$$GetRegionsImplCopyWithImpl(
      _$GetRegionsImpl _value, $Res Function(_$GetRegionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetRegionsImpl implements _GetRegions {
  _$GetRegionsImpl();

  @override
  String toString() {
    return 'RegionEvent.getRegions()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetRegionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRegions,
  }) {
    return getRegions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRegions,
  }) {
    return getRegions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRegions,
    required TResult orElse(),
  }) {
    if (getRegions != null) {
      return getRegions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRegions value) getRegions,
  }) {
    return getRegions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRegions value)? getRegions,
  }) {
    return getRegions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRegions value)? getRegions,
    required TResult orElse(),
  }) {
    if (getRegions != null) {
      return getRegions(this);
    }
    return orElse();
  }
}

abstract class _GetRegions implements RegionEvent {
  factory _GetRegions() = _$GetRegionsImpl;
}
