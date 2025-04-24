// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoriteState {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  bool get isEnpty => throw _privateConstructorUsedError;
  List<Course> get courses => throw _privateConstructorUsedError;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoriteStateCopyWith<FavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res, FavoriteState>;
  @useResult
  $Res call(
      {bool loading,
      bool error,
      String errorMessage,
      bool isDone,
      bool isEnpty,
      List<Course> courses});
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res, $Val extends FavoriteState>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? errorMessage = null,
    Object? isDone = null,
    Object? isEnpty = null,
    Object? courses = null,
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
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnpty: null == isEnpty
          ? _value.isEnpty
          : isEnpty // ignore: cast_nullable_to_non_nullable
              as bool,
      courses: null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteStateImplCopyWith<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  factory _$$FavoriteStateImplCopyWith(
          _$FavoriteStateImpl value, $Res Function(_$FavoriteStateImpl) then) =
      __$$FavoriteStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool error,
      String errorMessage,
      bool isDone,
      bool isEnpty,
      List<Course> courses});
}

/// @nodoc
class __$$FavoriteStateImplCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteStateImpl>
    implements _$$FavoriteStateImplCopyWith<$Res> {
  __$$FavoriteStateImplCopyWithImpl(
      _$FavoriteStateImpl _value, $Res Function(_$FavoriteStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? errorMessage = null,
    Object? isDone = null,
    Object? isEnpty = null,
    Object? courses = null,
  }) {
    return _then(_$FavoriteStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnpty: null == isEnpty
          ? _value.isEnpty
          : isEnpty // ignore: cast_nullable_to_non_nullable
              as bool,
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
    ));
  }
}

/// @nodoc

class _$FavoriteStateImpl implements _FavoriteState {
  const _$FavoriteStateImpl(
      {this.loading = false,
      this.error = false,
      this.errorMessage = '',
      this.isDone = false,
      this.isEnpty = false,
      final List<Course> courses = const []})
      : _courses = courses;

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool error;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool isDone;
  @override
  @JsonKey()
  final bool isEnpty;
  final List<Course> _courses;
  @override
  @JsonKey()
  List<Course> get courses {
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  @override
  String toString() {
    return 'FavoriteState(loading: $loading, error: $error, errorMessage: $errorMessage, isDone: $isDone, isEnpty: $isEnpty, courses: $courses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.isEnpty, isEnpty) || other.isEnpty == isEnpty) &&
            const DeepCollectionEquality().equals(other._courses, _courses));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, error, errorMessage,
      isDone, isEnpty, const DeepCollectionEquality().hash(_courses));

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteStateImplCopyWith<_$FavoriteStateImpl> get copyWith =>
      __$$FavoriteStateImplCopyWithImpl<_$FavoriteStateImpl>(this, _$identity);
}

abstract class _FavoriteState implements FavoriteState {
  const factory _FavoriteState(
      {final bool loading,
      final bool error,
      final String errorMessage,
      final bool isDone,
      final bool isEnpty,
      final List<Course> courses}) = _$FavoriteStateImpl;

  @override
  bool get loading;
  @override
  bool get error;
  @override
  String get errorMessage;
  @override
  bool get isDone;
  @override
  bool get isEnpty;
  @override
  List<Course> get courses;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteStateImplCopyWith<_$FavoriteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoriteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFavorites,
    required TResult Function(int courseId) toggleFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFavorites,
    TResult? Function(int courseId)? toggleFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFavorites,
    TResult Function(int courseId)? toggleFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFavorites value) getFavorites,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFavorites value)? getFavorites,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFavorites value)? getFavorites,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteEventCopyWith<$Res> {
  factory $FavoriteEventCopyWith(
          FavoriteEvent value, $Res Function(FavoriteEvent) then) =
      _$FavoriteEventCopyWithImpl<$Res, FavoriteEvent>;
}

/// @nodoc
class _$FavoriteEventCopyWithImpl<$Res, $Val extends FavoriteEvent>
    implements $FavoriteEventCopyWith<$Res> {
  _$FavoriteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetFavoritesImplCopyWith<$Res> {
  factory _$$GetFavoritesImplCopyWith(
          _$GetFavoritesImpl value, $Res Function(_$GetFavoritesImpl) then) =
      __$$GetFavoritesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFavoritesImplCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res, _$GetFavoritesImpl>
    implements _$$GetFavoritesImplCopyWith<$Res> {
  __$$GetFavoritesImplCopyWithImpl(
      _$GetFavoritesImpl _value, $Res Function(_$GetFavoritesImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetFavoritesImpl implements _GetFavorites {
  const _$GetFavoritesImpl();

  @override
  String toString() {
    return 'FavoriteEvent.getFavorites()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetFavoritesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFavorites,
    required TResult Function(int courseId) toggleFavorite,
  }) {
    return getFavorites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFavorites,
    TResult? Function(int courseId)? toggleFavorite,
  }) {
    return getFavorites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFavorites,
    TResult Function(int courseId)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (getFavorites != null) {
      return getFavorites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFavorites value) getFavorites,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
  }) {
    return getFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFavorites value)? getFavorites,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
  }) {
    return getFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFavorites value)? getFavorites,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (getFavorites != null) {
      return getFavorites(this);
    }
    return orElse();
  }
}

abstract class _GetFavorites implements FavoriteEvent {
  const factory _GetFavorites() = _$GetFavoritesImpl;
}

/// @nodoc
abstract class _$$ToggleFavoriteImplCopyWith<$Res> {
  factory _$$ToggleFavoriteImplCopyWith(_$ToggleFavoriteImpl value,
          $Res Function(_$ToggleFavoriteImpl) then) =
      __$$ToggleFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int courseId});
}

/// @nodoc
class __$$ToggleFavoriteImplCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res, _$ToggleFavoriteImpl>
    implements _$$ToggleFavoriteImplCopyWith<$Res> {
  __$$ToggleFavoriteImplCopyWithImpl(
      _$ToggleFavoriteImpl _value, $Res Function(_$ToggleFavoriteImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
  }) {
    return _then(_$ToggleFavoriteImpl(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ToggleFavoriteImpl implements _ToggleFavorite {
  const _$ToggleFavoriteImpl({required this.courseId});

  @override
  final int courseId;

  @override
  String toString() {
    return 'FavoriteEvent.toggleFavorite(courseId: $courseId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleFavoriteImpl &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseId);

  /// Create a copy of FavoriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleFavoriteImplCopyWith<_$ToggleFavoriteImpl> get copyWith =>
      __$$ToggleFavoriteImplCopyWithImpl<_$ToggleFavoriteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFavorites,
    required TResult Function(int courseId) toggleFavorite,
  }) {
    return toggleFavorite(courseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFavorites,
    TResult? Function(int courseId)? toggleFavorite,
  }) {
    return toggleFavorite?.call(courseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFavorites,
    TResult Function(int courseId)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (toggleFavorite != null) {
      return toggleFavorite(courseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFavorites value) getFavorites,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
  }) {
    return toggleFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFavorites value)? getFavorites,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
  }) {
    return toggleFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFavorites value)? getFavorites,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (toggleFavorite != null) {
      return toggleFavorite(this);
    }
    return orElse();
  }
}

abstract class _ToggleFavorite implements FavoriteEvent {
  const factory _ToggleFavorite({required final int courseId}) =
      _$ToggleFavoriteImpl;

  int get courseId;

  /// Create a copy of FavoriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleFavoriteImplCopyWith<_$ToggleFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
