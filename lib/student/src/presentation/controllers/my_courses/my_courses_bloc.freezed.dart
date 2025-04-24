// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_courses_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyCoursesState {
  List<Course> get courses => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get isEmpty => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;

  /// Create a copy of MyCoursesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyCoursesStateCopyWith<MyCoursesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyCoursesStateCopyWith<$Res> {
  factory $MyCoursesStateCopyWith(
          MyCoursesState value, $Res Function(MyCoursesState) then) =
      _$MyCoursesStateCopyWithImpl<$Res, MyCoursesState>;
  @useResult
  $Res call(
      {List<Course> courses,
      bool isLoading,
      bool isError,
      bool isEmpty,
      String errorMessage,
      bool isSuccess});
}

/// @nodoc
class _$MyCoursesStateCopyWithImpl<$Res, $Val extends MyCoursesState>
    implements $MyCoursesStateCopyWith<$Res> {
  _$MyCoursesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyCoursesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? isEmpty = null,
    Object? errorMessage = null,
    Object? isSuccess = null,
  }) {
    return _then(_value.copyWith(
      courses: null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmpty: null == isEmpty
          ? _value.isEmpty
          : isEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $MyCoursesStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Course> courses,
      bool isLoading,
      bool isError,
      bool isEmpty,
      String errorMessage,
      bool isSuccess});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MyCoursesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyCoursesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? isEmpty = null,
    Object? errorMessage = null,
    Object? isSuccess = null,
  }) {
    return _then(_$InitialImpl(
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmpty: null == isEmpty
          ? _value.isEmpty
          : isEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {final List<Course> courses = const [],
      this.isLoading = true,
      this.isError = false,
      this.isEmpty = false,
      this.errorMessage = '',
      this.isSuccess = false})
      : _courses = courses;

  final List<Course> _courses;
  @override
  @JsonKey()
  List<Course> get courses {
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;
  @override
  @JsonKey()
  final bool isEmpty;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool isSuccess;

  @override
  String toString() {
    return 'MyCoursesState(courses: $courses, isLoading: $isLoading, isError: $isError, isEmpty: $isEmpty, errorMessage: $errorMessage, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._courses, _courses) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isEmpty, isEmpty) || other.isEmpty == isEmpty) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_courses),
      isLoading,
      isError,
      isEmpty,
      errorMessage,
      isSuccess);

  /// Create a copy of MyCoursesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements MyCoursesState {
  const factory _Initial(
      {final List<Course> courses,
      final bool isLoading,
      final bool isError,
      final bool isEmpty,
      final String errorMessage,
      final bool isSuccess}) = _$InitialImpl;

  @override
  List<Course> get courses;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  bool get isEmpty;
  @override
  String get errorMessage;
  @override
  bool get isSuccess;

  /// Create a copy of MyCoursesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MyCoursesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMyCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMyCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMyCourses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMyCourses value) getMyCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMyCourses value)? getMyCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMyCourses value)? getMyCourses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyCoursesEventCopyWith<$Res> {
  factory $MyCoursesEventCopyWith(
          MyCoursesEvent value, $Res Function(MyCoursesEvent) then) =
      _$MyCoursesEventCopyWithImpl<$Res, MyCoursesEvent>;
}

/// @nodoc
class _$MyCoursesEventCopyWithImpl<$Res, $Val extends MyCoursesEvent>
    implements $MyCoursesEventCopyWith<$Res> {
  _$MyCoursesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyCoursesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetMyCoursesImplCopyWith<$Res> {
  factory _$$GetMyCoursesImplCopyWith(
          _$GetMyCoursesImpl value, $Res Function(_$GetMyCoursesImpl) then) =
      __$$GetMyCoursesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMyCoursesImplCopyWithImpl<$Res>
    extends _$MyCoursesEventCopyWithImpl<$Res, _$GetMyCoursesImpl>
    implements _$$GetMyCoursesImplCopyWith<$Res> {
  __$$GetMyCoursesImplCopyWithImpl(
      _$GetMyCoursesImpl _value, $Res Function(_$GetMyCoursesImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyCoursesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetMyCoursesImpl implements _GetMyCourses {
  const _$GetMyCoursesImpl();

  @override
  String toString() {
    return 'MyCoursesEvent.getMyCourses()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMyCoursesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMyCourses,
  }) {
    return getMyCourses();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMyCourses,
  }) {
    return getMyCourses?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMyCourses,
    required TResult orElse(),
  }) {
    if (getMyCourses != null) {
      return getMyCourses();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMyCourses value) getMyCourses,
  }) {
    return getMyCourses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMyCourses value)? getMyCourses,
  }) {
    return getMyCourses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMyCourses value)? getMyCourses,
    required TResult orElse(),
  }) {
    if (getMyCourses != null) {
      return getMyCourses(this);
    }
    return orElse();
  }
}

abstract class _GetMyCourses implements MyCoursesEvent {
  const factory _GetMyCourses() = _$GetMyCoursesImpl;
}
