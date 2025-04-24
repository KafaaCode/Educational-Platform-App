// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_alerte_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TeacherAlerteState {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isAuth => throw _privateConstructorUsedError;
  bool get isEmpty => throw _privateConstructorUsedError;
  List<Teacher> get teachers => throw _privateConstructorUsedError;

  /// Create a copy of TeacherAlerteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherAlerteStateCopyWith<TeacherAlerteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherAlerteStateCopyWith<$Res> {
  factory $TeacherAlerteStateCopyWith(
          TeacherAlerteState value, $Res Function(TeacherAlerteState) then) =
      _$TeacherAlerteStateCopyWithImpl<$Res, TeacherAlerteState>;
  @useResult
  $Res call(
      {bool loading,
      bool error,
      String errorMessage,
      bool isAuth,
      bool isEmpty,
      List<Teacher> teachers});
}

/// @nodoc
class _$TeacherAlerteStateCopyWithImpl<$Res, $Val extends TeacherAlerteState>
    implements $TeacherAlerteStateCopyWith<$Res> {
  _$TeacherAlerteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherAlerteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? errorMessage = null,
    Object? isAuth = null,
    Object? isEmpty = null,
    Object? teachers = null,
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
      isAuth: null == isAuth
          ? _value.isAuth
          : isAuth // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmpty: null == isEmpty
          ? _value.isEmpty
          : isEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
      teachers: null == teachers
          ? _value.teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as List<Teacher>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $TeacherAlerteStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool error,
      String errorMessage,
      bool isAuth,
      bool isEmpty,
      List<Teacher> teachers});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TeacherAlerteStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherAlerteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? errorMessage = null,
    Object? isAuth = null,
    Object? isEmpty = null,
    Object? teachers = null,
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
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isAuth: null == isAuth
          ? _value.isAuth
          : isAuth // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmpty: null == isEmpty
          ? _value.isEmpty
          : isEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
      teachers: null == teachers
          ? _value._teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as List<Teacher>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.loading = false,
      this.error = false,
      this.errorMessage = '',
      this.isAuth = false,
      this.isEmpty = false,
      final List<Teacher> teachers = const []})
      : _teachers = teachers;

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
  final bool isAuth;
  @override
  @JsonKey()
  final bool isEmpty;
  final List<Teacher> _teachers;
  @override
  @JsonKey()
  List<Teacher> get teachers {
    if (_teachers is EqualUnmodifiableListView) return _teachers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teachers);
  }

  @override
  String toString() {
    return 'TeacherAlerteState(loading: $loading, error: $error, errorMessage: $errorMessage, isAuth: $isAuth, isEmpty: $isEmpty, teachers: $teachers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isAuth, isAuth) || other.isAuth == isAuth) &&
            (identical(other.isEmpty, isEmpty) || other.isEmpty == isEmpty) &&
            const DeepCollectionEquality().equals(other._teachers, _teachers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, error, errorMessage,
      isAuth, isEmpty, const DeepCollectionEquality().hash(_teachers));

  /// Create a copy of TeacherAlerteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements TeacherAlerteState {
  const factory _Initial(
      {final bool loading,
      final bool error,
      final String errorMessage,
      final bool isAuth,
      final bool isEmpty,
      final List<Teacher> teachers}) = _$InitialImpl;

  @override
  bool get loading;
  @override
  bool get error;
  @override
  String get errorMessage;
  @override
  bool get isAuth;
  @override
  bool get isEmpty;
  @override
  List<Teacher> get teachers;

  /// Create a copy of TeacherAlerteState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TeacherAlerteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTeacherAlertes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTeacherAlertes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTeacherAlertes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTeacherAlertes value) getTeacherAlertes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTeacherAlertes value)? getTeacherAlertes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTeacherAlertes value)? getTeacherAlertes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherAlerteEventCopyWith<$Res> {
  factory $TeacherAlerteEventCopyWith(
          TeacherAlerteEvent value, $Res Function(TeacherAlerteEvent) then) =
      _$TeacherAlerteEventCopyWithImpl<$Res, TeacherAlerteEvent>;
}

/// @nodoc
class _$TeacherAlerteEventCopyWithImpl<$Res, $Val extends TeacherAlerteEvent>
    implements $TeacherAlerteEventCopyWith<$Res> {
  _$TeacherAlerteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherAlerteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetTeacherAlertesImplCopyWith<$Res> {
  factory _$$GetTeacherAlertesImplCopyWith(_$GetTeacherAlertesImpl value,
          $Res Function(_$GetTeacherAlertesImpl) then) =
      __$$GetTeacherAlertesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTeacherAlertesImplCopyWithImpl<$Res>
    extends _$TeacherAlerteEventCopyWithImpl<$Res, _$GetTeacherAlertesImpl>
    implements _$$GetTeacherAlertesImplCopyWith<$Res> {
  __$$GetTeacherAlertesImplCopyWithImpl(_$GetTeacherAlertesImpl _value,
      $Res Function(_$GetTeacherAlertesImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherAlerteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetTeacherAlertesImpl implements _GetTeacherAlertes {
  const _$GetTeacherAlertesImpl();

  @override
  String toString() {
    return 'TeacherAlerteEvent.getTeacherAlertes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTeacherAlertesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTeacherAlertes,
  }) {
    return getTeacherAlertes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTeacherAlertes,
  }) {
    return getTeacherAlertes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTeacherAlertes,
    required TResult orElse(),
  }) {
    if (getTeacherAlertes != null) {
      return getTeacherAlertes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTeacherAlertes value) getTeacherAlertes,
  }) {
    return getTeacherAlertes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTeacherAlertes value)? getTeacherAlertes,
  }) {
    return getTeacherAlertes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTeacherAlertes value)? getTeacherAlertes,
    required TResult orElse(),
  }) {
    if (getTeacherAlertes != null) {
      return getTeacherAlertes(this);
    }
    return orElse();
  }
}

abstract class _GetTeacherAlertes implements TeacherAlerteEvent {
  const factory _GetTeacherAlertes() = _$GetTeacherAlertesImpl;
}
