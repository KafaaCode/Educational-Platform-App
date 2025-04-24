// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CourseFilterEvent {
  String get CourseType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String CourseType) fetchCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String CourseType)? fetchCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String CourseType)? fetchCourses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCourses value) fetchCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCourses value)? fetchCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCourses value)? fetchCourses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CourseFilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseFilterEventCopyWith<CourseFilterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseFilterEventCopyWith<$Res> {
  factory $CourseFilterEventCopyWith(
          CourseFilterEvent value, $Res Function(CourseFilterEvent) then) =
      _$CourseFilterEventCopyWithImpl<$Res, CourseFilterEvent>;
  @useResult
  $Res call({String CourseType});
}

/// @nodoc
class _$CourseFilterEventCopyWithImpl<$Res, $Val extends CourseFilterEvent>
    implements $CourseFilterEventCopyWith<$Res> {
  _$CourseFilterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseFilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? CourseType = null,
  }) {
    return _then(_value.copyWith(
      CourseType: null == CourseType
          ? _value.CourseType
          : CourseType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchCoursesImplCopyWith<$Res>
    implements $CourseFilterEventCopyWith<$Res> {
  factory _$$FetchCoursesImplCopyWith(
          _$FetchCoursesImpl value, $Res Function(_$FetchCoursesImpl) then) =
      __$$FetchCoursesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String CourseType});
}

/// @nodoc
class __$$FetchCoursesImplCopyWithImpl<$Res>
    extends _$CourseFilterEventCopyWithImpl<$Res, _$FetchCoursesImpl>
    implements _$$FetchCoursesImplCopyWith<$Res> {
  __$$FetchCoursesImplCopyWithImpl(
      _$FetchCoursesImpl _value, $Res Function(_$FetchCoursesImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseFilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? CourseType = null,
  }) {
    return _then(_$FetchCoursesImpl(
      CourseType: null == CourseType
          ? _value.CourseType
          : CourseType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchCoursesImpl implements _FetchCourses {
  const _$FetchCoursesImpl({required this.CourseType});

  @override
  final String CourseType;

  @override
  String toString() {
    return 'CourseFilterEvent.fetchCourses(CourseType: $CourseType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCoursesImpl &&
            (identical(other.CourseType, CourseType) ||
                other.CourseType == CourseType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, CourseType);

  /// Create a copy of CourseFilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCoursesImplCopyWith<_$FetchCoursesImpl> get copyWith =>
      __$$FetchCoursesImplCopyWithImpl<_$FetchCoursesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String CourseType) fetchCourses,
  }) {
    return fetchCourses(CourseType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String CourseType)? fetchCourses,
  }) {
    return fetchCourses?.call(CourseType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String CourseType)? fetchCourses,
    required TResult orElse(),
  }) {
    if (fetchCourses != null) {
      return fetchCourses(CourseType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCourses value) fetchCourses,
  }) {
    return fetchCourses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCourses value)? fetchCourses,
  }) {
    return fetchCourses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCourses value)? fetchCourses,
    required TResult orElse(),
  }) {
    if (fetchCourses != null) {
      return fetchCourses(this);
    }
    return orElse();
  }
}

abstract class _FetchCourses implements CourseFilterEvent {
  const factory _FetchCourses({required final String CourseType}) =
      _$FetchCoursesImpl;

  @override
  String get CourseType;

  /// Create a copy of CourseFilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchCoursesImplCopyWith<_$FetchCoursesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CourseFilterState {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isAuth => throw _privateConstructorUsedError;
  bool get isEmpty => throw _privateConstructorUsedError;
  List<Course> get courses => throw _privateConstructorUsedError;

  /// Create a copy of CourseFilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseFilterStateCopyWith<CourseFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseFilterStateCopyWith<$Res> {
  factory $CourseFilterStateCopyWith(
          CourseFilterState value, $Res Function(CourseFilterState) then) =
      _$CourseFilterStateCopyWithImpl<$Res, CourseFilterState>;
  @useResult
  $Res call(
      {bool loading,
      bool error,
      String errorMessage,
      bool isAuth,
      bool isEmpty,
      List<Course> courses});
}

/// @nodoc
class _$CourseFilterStateCopyWithImpl<$Res, $Val extends CourseFilterState>
    implements $CourseFilterStateCopyWith<$Res> {
  _$CourseFilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseFilterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? errorMessage = null,
    Object? isAuth = null,
    Object? isEmpty = null,
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
      isEmpty: null == isEmpty
          ? _value.isEmpty
          : isEmpty // ignore: cast_nullable_to_non_nullable
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
    implements $CourseFilterStateCopyWith<$Res> {
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
      List<Course> courses});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CourseFilterStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseFilterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? errorMessage = null,
    Object? isAuth = null,
    Object? isEmpty = null,
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
      isEmpty: null == isEmpty
          ? _value.isEmpty
          : isEmpty // ignore: cast_nullable_to_non_nullable
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
      this.isEmpty = false,
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
  final bool isEmpty;
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
    return 'CourseFilterState(loading: $loading, error: $error, errorMessage: $errorMessage, isAuth: $isAuth, isEmpty: $isEmpty, courses: $courses)';
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
            const DeepCollectionEquality().equals(other._courses, _courses));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, error, errorMessage,
      isAuth, isEmpty, const DeepCollectionEquality().hash(_courses));

  /// Create a copy of CourseFilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements CourseFilterState {
  const factory _Initial(
      {final bool loading,
      final bool error,
      final String errorMessage,
      final bool isAuth,
      final bool isEmpty,
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
  bool get isEmpty;
  @override
  List<Course> get courses;

  /// Create a copy of CourseFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
