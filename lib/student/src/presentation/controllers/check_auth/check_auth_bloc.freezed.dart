// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckAuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(User user) updateInfo,
    required TResult Function(User user) sendData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(User user)? updateInfo,
    TResult? Function(User user)? sendData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(User user)? updateInfo,
    TResult Function(User user)? sendData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateInfoEvent value) updateInfo,
    required TResult Function(_SendDataEvent value) sendData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateInfoEvent value)? updateInfo,
    TResult? Function(_SendDataEvent value)? sendData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateInfoEvent value)? updateInfo,
    TResult Function(_SendDataEvent value)? sendData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckAuthEventCopyWith<$Res> {
  factory $CheckAuthEventCopyWith(
          CheckAuthEvent value, $Res Function(CheckAuthEvent) then) =
      _$CheckAuthEventCopyWithImpl<$Res, CheckAuthEvent>;
}

/// @nodoc
class _$CheckAuthEventCopyWithImpl<$Res, $Val extends CheckAuthEvent>
    implements $CheckAuthEventCopyWith<$Res> {
  _$CheckAuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckAuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CheckAuthEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckAuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CheckAuthEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(User user) updateInfo,
    required TResult Function(User user) sendData,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(User user)? updateInfo,
    TResult? Function(User user)? sendData,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(User user)? updateInfo,
    TResult Function(User user)? sendData,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateInfoEvent value) updateInfo,
    required TResult Function(_SendDataEvent value) sendData,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateInfoEvent value)? updateInfo,
    TResult? Function(_SendDataEvent value)? sendData,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateInfoEvent value)? updateInfo,
    TResult Function(_SendDataEvent value)? sendData,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CheckAuthEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$UpdateInfoEventImplCopyWith<$Res> {
  factory _$$UpdateInfoEventImplCopyWith(_$UpdateInfoEventImpl value,
          $Res Function(_$UpdateInfoEventImpl) then) =
      __$$UpdateInfoEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$UpdateInfoEventImplCopyWithImpl<$Res>
    extends _$CheckAuthEventCopyWithImpl<$Res, _$UpdateInfoEventImpl>
    implements _$$UpdateInfoEventImplCopyWith<$Res> {
  __$$UpdateInfoEventImplCopyWithImpl(
      _$UpdateInfoEventImpl _value, $Res Function(_$UpdateInfoEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UpdateInfoEventImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$UpdateInfoEventImpl implements _UpdateInfoEvent {
  const _$UpdateInfoEventImpl({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'CheckAuthEvent.updateInfo(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateInfoEventImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of CheckAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateInfoEventImplCopyWith<_$UpdateInfoEventImpl> get copyWith =>
      __$$UpdateInfoEventImplCopyWithImpl<_$UpdateInfoEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(User user) updateInfo,
    required TResult Function(User user) sendData,
  }) {
    return updateInfo(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(User user)? updateInfo,
    TResult? Function(User user)? sendData,
  }) {
    return updateInfo?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(User user)? updateInfo,
    TResult Function(User user)? sendData,
    required TResult orElse(),
  }) {
    if (updateInfo != null) {
      return updateInfo(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateInfoEvent value) updateInfo,
    required TResult Function(_SendDataEvent value) sendData,
  }) {
    return updateInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateInfoEvent value)? updateInfo,
    TResult? Function(_SendDataEvent value)? sendData,
  }) {
    return updateInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateInfoEvent value)? updateInfo,
    TResult Function(_SendDataEvent value)? sendData,
    required TResult orElse(),
  }) {
    if (updateInfo != null) {
      return updateInfo(this);
    }
    return orElse();
  }
}

abstract class _UpdateInfoEvent implements CheckAuthEvent {
  const factory _UpdateInfoEvent({required final User user}) =
      _$UpdateInfoEventImpl;

  User get user;

  /// Create a copy of CheckAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateInfoEventImplCopyWith<_$UpdateInfoEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendDataEventImplCopyWith<$Res> {
  factory _$$SendDataEventImplCopyWith(
          _$SendDataEventImpl value, $Res Function(_$SendDataEventImpl) then) =
      __$$SendDataEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$SendDataEventImplCopyWithImpl<$Res>
    extends _$CheckAuthEventCopyWithImpl<$Res, _$SendDataEventImpl>
    implements _$$SendDataEventImplCopyWith<$Res> {
  __$$SendDataEventImplCopyWithImpl(
      _$SendDataEventImpl _value, $Res Function(_$SendDataEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SendDataEventImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$SendDataEventImpl implements _SendDataEvent {
  const _$SendDataEventImpl({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'CheckAuthEvent.sendData(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendDataEventImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of CheckAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendDataEventImplCopyWith<_$SendDataEventImpl> get copyWith =>
      __$$SendDataEventImplCopyWithImpl<_$SendDataEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(User user) updateInfo,
    required TResult Function(User user) sendData,
  }) {
    return sendData(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(User user)? updateInfo,
    TResult? Function(User user)? sendData,
  }) {
    return sendData?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(User user)? updateInfo,
    TResult Function(User user)? sendData,
    required TResult orElse(),
  }) {
    if (sendData != null) {
      return sendData(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateInfoEvent value) updateInfo,
    required TResult Function(_SendDataEvent value) sendData,
  }) {
    return sendData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateInfoEvent value)? updateInfo,
    TResult? Function(_SendDataEvent value)? sendData,
  }) {
    return sendData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateInfoEvent value)? updateInfo,
    TResult Function(_SendDataEvent value)? sendData,
    required TResult orElse(),
  }) {
    if (sendData != null) {
      return sendData(this);
    }
    return orElse();
  }
}

abstract class _SendDataEvent implements CheckAuthEvent {
  const factory _SendDataEvent({required final User user}) =
      _$SendDataEventImpl;

  User get user;

  /// Create a copy of CheckAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendDataEventImplCopyWith<_$SendDataEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CheckAuthState {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  bool get isAuth => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool loading, bool error, bool isAuth, User user,
            String errorMessage)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool loading, bool error, bool isAuth, User user,
            String errorMessage)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool loading, bool error, bool isAuth, User user,
            String errorMessage)?
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

  /// Create a copy of CheckAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckAuthStateCopyWith<CheckAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckAuthStateCopyWith<$Res> {
  factory $CheckAuthStateCopyWith(
          CheckAuthState value, $Res Function(CheckAuthState) then) =
      _$CheckAuthStateCopyWithImpl<$Res, CheckAuthState>;
  @useResult
  $Res call(
      {bool loading, bool error, bool isAuth, User user, String errorMessage});
}

/// @nodoc
class _$CheckAuthStateCopyWithImpl<$Res, $Val extends CheckAuthState>
    implements $CheckAuthStateCopyWith<$Res> {
  _$CheckAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckAuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? isAuth = null,
    Object? user = null,
    Object? errorMessage = null,
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
      isAuth: null == isAuth
          ? _value.isAuth
          : isAuth // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CheckAuthStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading, bool error, bool isAuth, User user, String errorMessage});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CheckAuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckAuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? isAuth = null,
    Object? user = null,
    Object? errorMessage = null,
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
      isAuth: null == isAuth
          ? _value.isAuth
          : isAuth // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  _$InitialImpl(
      {this.loading = false,
      this.error = false,
      this.isAuth = false,
      this.user = const User(
          id: '0',
          name: '',
          email: '',
          role: '',
          gander: '',
          region: '',
          academicStage: {'stage': '', 'type': ""}),
      this.errorMessage = ''});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool error;
  @override
  @JsonKey()
  final bool isAuth;
  @override
  @JsonKey()
  final User user;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'CheckAuthState.initial(loading: $loading, error: $error, isAuth: $isAuth, user: $user, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isAuth, isAuth) || other.isAuth == isAuth) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, loading, error, isAuth, user, errorMessage);

  /// Create a copy of CheckAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool loading, bool error, bool isAuth, User user,
            String errorMessage)
        initial,
  }) {
    return initial(loading, error, isAuth, user, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool loading, bool error, bool isAuth, User user,
            String errorMessage)?
        initial,
  }) {
    return initial?.call(loading, error, isAuth, user, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool loading, bool error, bool isAuth, User user,
            String errorMessage)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(loading, error, isAuth, user, errorMessage);
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

abstract class _Initial implements CheckAuthState {
  factory _Initial(
      {final bool loading,
      final bool error,
      final bool isAuth,
      final User user,
      final String errorMessage}) = _$InitialImpl;

  @override
  bool get loading;
  @override
  bool get error;
  @override
  bool get isAuth;
  @override
  User get user;
  @override
  String get errorMessage;

  /// Create a copy of CheckAuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
