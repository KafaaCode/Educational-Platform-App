// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TeacherFilterEvent {
  int get specializationId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int specializationId) fetchTeachers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int specializationId)? fetchTeachers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int specializationId)? fetchTeachers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTeachers value) fetchTeachers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTeachers value)? fetchTeachers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTeachers value)? fetchTeachers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of TeacherFilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherFilterEventCopyWith<TeacherFilterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherFilterEventCopyWith<$Res> {
  factory $TeacherFilterEventCopyWith(
          TeacherFilterEvent value, $Res Function(TeacherFilterEvent) then) =
      _$TeacherFilterEventCopyWithImpl<$Res, TeacherFilterEvent>;
  @useResult
  $Res call({int specializationId});
}

/// @nodoc
class _$TeacherFilterEventCopyWithImpl<$Res, $Val extends TeacherFilterEvent>
    implements $TeacherFilterEventCopyWith<$Res> {
  _$TeacherFilterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherFilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? specializationId = null,
  }) {
    return _then(_value.copyWith(
      specializationId: null == specializationId
          ? _value.specializationId
          : specializationId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchTeachersImplCopyWith<$Res>
    implements $TeacherFilterEventCopyWith<$Res> {
  factory _$$FetchTeachersImplCopyWith(
          _$FetchTeachersImpl value, $Res Function(_$FetchTeachersImpl) then) =
      __$$FetchTeachersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int specializationId});
}

/// @nodoc
class __$$FetchTeachersImplCopyWithImpl<$Res>
    extends _$TeacherFilterEventCopyWithImpl<$Res, _$FetchTeachersImpl>
    implements _$$FetchTeachersImplCopyWith<$Res> {
  __$$FetchTeachersImplCopyWithImpl(
      _$FetchTeachersImpl _value, $Res Function(_$FetchTeachersImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherFilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? specializationId = null,
  }) {
    return _then(_$FetchTeachersImpl(
      specializationId: null == specializationId
          ? _value.specializationId
          : specializationId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchTeachersImpl implements _FetchTeachers {
  const _$FetchTeachersImpl({required this.specializationId});

  @override
  final int specializationId;

  @override
  String toString() {
    return 'TeacherFilterEvent.fetchTeachers(specializationId: $specializationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTeachersImpl &&
            (identical(other.specializationId, specializationId) ||
                other.specializationId == specializationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, specializationId);

  /// Create a copy of TeacherFilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchTeachersImplCopyWith<_$FetchTeachersImpl> get copyWith =>
      __$$FetchTeachersImplCopyWithImpl<_$FetchTeachersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int specializationId) fetchTeachers,
  }) {
    return fetchTeachers(specializationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int specializationId)? fetchTeachers,
  }) {
    return fetchTeachers?.call(specializationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int specializationId)? fetchTeachers,
    required TResult orElse(),
  }) {
    if (fetchTeachers != null) {
      return fetchTeachers(specializationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTeachers value) fetchTeachers,
  }) {
    return fetchTeachers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTeachers value)? fetchTeachers,
  }) {
    return fetchTeachers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTeachers value)? fetchTeachers,
    required TResult orElse(),
  }) {
    if (fetchTeachers != null) {
      return fetchTeachers(this);
    }
    return orElse();
  }
}

abstract class _FetchTeachers implements TeacherFilterEvent {
  const factory _FetchTeachers({required final int specializationId}) =
      _$FetchTeachersImpl;

  @override
  int get specializationId;

  /// Create a copy of TeacherFilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchTeachersImplCopyWith<_$FetchTeachersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TeacherFilterState {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isAuth => throw _privateConstructorUsedError;
  bool get isEmpty => throw _privateConstructorUsedError;
  List<Teacher> get teachers => throw _privateConstructorUsedError;

  /// Create a copy of TeacherFilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherFilterStateCopyWith<TeacherFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherFilterStateCopyWith<$Res> {
  factory $TeacherFilterStateCopyWith(
          TeacherFilterState value, $Res Function(TeacherFilterState) then) =
      _$TeacherFilterStateCopyWithImpl<$Res, TeacherFilterState>;
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
class _$TeacherFilterStateCopyWithImpl<$Res, $Val extends TeacherFilterState>
    implements $TeacherFilterStateCopyWith<$Res> {
  _$TeacherFilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherFilterState
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
    implements $TeacherFilterStateCopyWith<$Res> {
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
    extends _$TeacherFilterStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherFilterState
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
    return 'TeacherFilterState(loading: $loading, error: $error, errorMessage: $errorMessage, isAuth: $isAuth, isEmpty: $isEmpty, teachers: $teachers)';
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

  /// Create a copy of TeacherFilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements TeacherFilterState {
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

  /// Create a copy of TeacherFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
