// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offers_discount_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OffersDiscountState {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isAuth => throw _privateConstructorUsedError;
  bool get isEnpty => throw _privateConstructorUsedError;
  List<Course> get courses => throw _privateConstructorUsedError;

  /// Create a copy of OffersDiscountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OffersDiscountStateCopyWith<OffersDiscountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffersDiscountStateCopyWith<$Res> {
  factory $OffersDiscountStateCopyWith(
          OffersDiscountState value, $Res Function(OffersDiscountState) then) =
      _$OffersDiscountStateCopyWithImpl<$Res, OffersDiscountState>;
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
class _$OffersDiscountStateCopyWithImpl<$Res, $Val extends OffersDiscountState>
    implements $OffersDiscountStateCopyWith<$Res> {
  _$OffersDiscountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OffersDiscountState
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
abstract class _$$OffersDiscountStateImplCopyWith<$Res>
    implements $OffersDiscountStateCopyWith<$Res> {
  factory _$$OffersDiscountStateImplCopyWith(_$OffersDiscountStateImpl value,
          $Res Function(_$OffersDiscountStateImpl) then) =
      __$$OffersDiscountStateImplCopyWithImpl<$Res>;
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
class __$$OffersDiscountStateImplCopyWithImpl<$Res>
    extends _$OffersDiscountStateCopyWithImpl<$Res, _$OffersDiscountStateImpl>
    implements _$$OffersDiscountStateImplCopyWith<$Res> {
  __$$OffersDiscountStateImplCopyWithImpl(_$OffersDiscountStateImpl _value,
      $Res Function(_$OffersDiscountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OffersDiscountState
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
    return _then(_$OffersDiscountStateImpl(
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

class _$OffersDiscountStateImpl implements _OffersDiscountState {
  const _$OffersDiscountStateImpl(
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
    return 'OffersDiscountState(loading: $loading, error: $error, errorMessage: $errorMessage, isAuth: $isAuth, isEnpty: $isEnpty, courses: $courses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffersDiscountStateImpl &&
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

  /// Create a copy of OffersDiscountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OffersDiscountStateImplCopyWith<_$OffersDiscountStateImpl> get copyWith =>
      __$$OffersDiscountStateImplCopyWithImpl<_$OffersDiscountStateImpl>(
          this, _$identity);
}

abstract class _OffersDiscountState implements OffersDiscountState {
  const factory _OffersDiscountState(
      {final bool loading,
      final bool error,
      final String errorMessage,
      final bool isAuth,
      final bool isEnpty,
      final List<Course> courses}) = _$OffersDiscountStateImpl;

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

  /// Create a copy of OffersDiscountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OffersDiscountStateImplCopyWith<_$OffersDiscountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OffersDiscountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOffersDiscounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOffersDiscounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOffersDiscounts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOffersDiscounts value) getOffersDiscounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOffersDiscounts value)? getOffersDiscounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOffersDiscounts value)? getOffersDiscounts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffersDiscountEventCopyWith<$Res> {
  factory $OffersDiscountEventCopyWith(
          OffersDiscountEvent value, $Res Function(OffersDiscountEvent) then) =
      _$OffersDiscountEventCopyWithImpl<$Res, OffersDiscountEvent>;
}

/// @nodoc
class _$OffersDiscountEventCopyWithImpl<$Res, $Val extends OffersDiscountEvent>
    implements $OffersDiscountEventCopyWith<$Res> {
  _$OffersDiscountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OffersDiscountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetOffersDiscountsImplCopyWith<$Res> {
  factory _$$GetOffersDiscountsImplCopyWith(_$GetOffersDiscountsImpl value,
          $Res Function(_$GetOffersDiscountsImpl) then) =
      __$$GetOffersDiscountsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetOffersDiscountsImplCopyWithImpl<$Res>
    extends _$OffersDiscountEventCopyWithImpl<$Res, _$GetOffersDiscountsImpl>
    implements _$$GetOffersDiscountsImplCopyWith<$Res> {
  __$$GetOffersDiscountsImplCopyWithImpl(_$GetOffersDiscountsImpl _value,
      $Res Function(_$GetOffersDiscountsImpl) _then)
      : super(_value, _then);

  /// Create a copy of OffersDiscountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetOffersDiscountsImpl implements _GetOffersDiscounts {
  const _$GetOffersDiscountsImpl();

  @override
  String toString() {
    return 'OffersDiscountEvent.getOffersDiscounts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetOffersDiscountsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOffersDiscounts,
  }) {
    return getOffersDiscounts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOffersDiscounts,
  }) {
    return getOffersDiscounts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOffersDiscounts,
    required TResult orElse(),
  }) {
    if (getOffersDiscounts != null) {
      return getOffersDiscounts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOffersDiscounts value) getOffersDiscounts,
  }) {
    return getOffersDiscounts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOffersDiscounts value)? getOffersDiscounts,
  }) {
    return getOffersDiscounts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOffersDiscounts value)? getOffersDiscounts,
    required TResult orElse(),
  }) {
    if (getOffersDiscounts != null) {
      return getOffersDiscounts(this);
    }
    return orElse();
  }
}

abstract class _GetOffersDiscounts implements OffersDiscountEvent {
  const factory _GetOffersDiscounts() = _$GetOffersDiscountsImpl;
}
