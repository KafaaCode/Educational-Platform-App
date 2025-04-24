// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'courses_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoursesState {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isAuth => throw _privateConstructorUsedError;
  bool get isEnpty => throw _privateConstructorUsedError;
  List<Course> get courses => throw _privateConstructorUsedError;

  /// Create a copy of CoursesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoursesStateCopyWith<CoursesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursesStateCopyWith<$Res> {
  factory $CoursesStateCopyWith(
          CoursesState value, $Res Function(CoursesState) then) =
      _$CoursesStateCopyWithImpl<$Res, CoursesState>;
  @useResult
  $Res call(
      {bool loading,
      bool error,
      String errorMessage,
      bool isAuth,
      bool isEnpty,
      List<Course> courses});
}

/// @nodoc
class _$CoursesStateCopyWithImpl<$Res, $Val extends CoursesState>
    implements $CoursesStateCopyWith<$Res> {
  _$CoursesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoursesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? errorMessage = null,
    Object? isAuth = null,
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
      isAuth: null == isAuth
          ? _value.isAuth
          : isAuth // ignore: cast_nullable_to_non_nullable
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
abstract class _$$InitialImplCopyWith<$Res>
    implements $CoursesStateCopyWith<$Res> {
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
      bool isEnpty,
      List<Course> courses});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CoursesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoursesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? errorMessage = null,
    Object? isAuth = null,
    Object? isEnpty = null,
    Object? courses = null,
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

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.loading = false,
      this.error = false,
      this.errorMessage = '',
      this.isAuth = false,
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
  final bool isAuth;
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
    return 'CoursesState(loading: $loading, error: $error, errorMessage: $errorMessage, isAuth: $isAuth, isEnpty: $isEnpty, courses: $courses)';
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
            (identical(other.isEnpty, isEnpty) || other.isEnpty == isEnpty) &&
            const DeepCollectionEquality().equals(other._courses, _courses));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, error, errorMessage,
      isAuth, isEnpty, const DeepCollectionEquality().hash(_courses));

  /// Create a copy of CoursesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements CoursesState {
  const factory _Initial(
      {final bool loading,
      final bool error,
      final String errorMessage,
      final bool isAuth,
      final bool isEnpty,
      final List<Course> courses}) = _$InitialImpl;

  @override
  bool get loading;
  @override
  bool get error;
  @override
  String get errorMessage;
  @override
  bool get isAuth;
  @override
  bool get isEnpty;
  @override
  List<Course> get courses;

  /// Create a copy of CoursesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CoursesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCourses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCourses value) getCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCourses value)? getCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCourses value)? getCourses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursesEventCopyWith<$Res> {
  factory $CoursesEventCopyWith(
          CoursesEvent value, $Res Function(CoursesEvent) then) =
      _$CoursesEventCopyWithImpl<$Res, CoursesEvent>;
}

/// @nodoc
class _$CoursesEventCopyWithImpl<$Res, $Val extends CoursesEvent>
    implements $CoursesEventCopyWith<$Res> {
  _$CoursesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoursesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetCoursesImplCopyWith<$Res> {
  factory _$$GetCoursesImplCopyWith(
          _$GetCoursesImpl value, $Res Function(_$GetCoursesImpl) then) =
      __$$GetCoursesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCoursesImplCopyWithImpl<$Res>
    extends _$CoursesEventCopyWithImpl<$Res, _$GetCoursesImpl>
    implements _$$GetCoursesImplCopyWith<$Res> {
  __$$GetCoursesImplCopyWithImpl(
      _$GetCoursesImpl _value, $Res Function(_$GetCoursesImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoursesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCoursesImpl implements _GetCourses {
  const _$GetCoursesImpl();

  @override
  String toString() {
    return 'CoursesEvent.getCourses()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCoursesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCourses,
  }) {
    return getCourses();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCourses,
  }) {
    return getCourses?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCourses,
    required TResult orElse(),
  }) {
    if (getCourses != null) {
      return getCourses();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCourses value) getCourses,
  }) {
    return getCourses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCourses value)? getCourses,
  }) {
    return getCourses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCourses value)? getCourses,
    required TResult orElse(),
  }) {
    if (getCourses != null) {
      return getCourses(this);
    }
    return orElse();
  }
}

abstract class _GetCourses implements CoursesEvent {
  const factory _GetCourses() = _$GetCoursesImpl;
}
