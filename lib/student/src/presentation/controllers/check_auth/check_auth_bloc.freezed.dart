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
    required TResult Function() logout,
    required TResult Function() refreshToken,
    required TResult Function(User user, bool isSend) updateInfo,
    required TResult Function(User user) resgiter,
    required TResult Function(String eamil, String password) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? logout,
    TResult? Function()? refreshToken,
    TResult? Function(User user, bool isSend)? updateInfo,
    TResult? Function(User user)? resgiter,
    TResult? Function(String eamil, String password)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? logout,
    TResult Function()? refreshToken,
    TResult Function(User user, bool isSend)? updateInfo,
    TResult Function(User user)? resgiter,
    TResult Function(String eamil, String password)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Logout value) logout,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_UpdateInfoEvent value) updateInfo,
    required TResult Function(_ResgiterEvent value) resgiter,
    required TResult Function(_LoginEvent value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_UpdateInfoEvent value)? updateInfo,
    TResult? Function(_ResgiterEvent value)? resgiter,
    TResult? Function(_LoginEvent value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Logout value)? logout,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_UpdateInfoEvent value)? updateInfo,
    TResult Function(_ResgiterEvent value)? resgiter,
    TResult Function(_LoginEvent value)? login,
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
    required TResult Function() logout,
    required TResult Function() refreshToken,
    required TResult Function(User user, bool isSend) updateInfo,
    required TResult Function(User user) resgiter,
    required TResult Function(String eamil, String password) login,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? logout,
    TResult? Function()? refreshToken,
    TResult? Function(User user, bool isSend)? updateInfo,
    TResult? Function(User user)? resgiter,
    TResult? Function(String eamil, String password)? login,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? logout,
    TResult Function()? refreshToken,
    TResult Function(User user, bool isSend)? updateInfo,
    TResult Function(User user)? resgiter,
    TResult Function(String eamil, String password)? login,
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
    required TResult Function(_Logout value) logout,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_UpdateInfoEvent value) updateInfo,
    required TResult Function(_ResgiterEvent value) resgiter,
    required TResult Function(_LoginEvent value) login,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_UpdateInfoEvent value)? updateInfo,
    TResult? Function(_ResgiterEvent value)? resgiter,
    TResult? Function(_LoginEvent value)? login,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Logout value)? logout,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_UpdateInfoEvent value)? updateInfo,
    TResult Function(_ResgiterEvent value)? resgiter,
    TResult Function(_LoginEvent value)? login,
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
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$CheckAuthEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckAuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutImpl implements _Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'CheckAuthEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() logout,
    required TResult Function() refreshToken,
    required TResult Function(User user, bool isSend) updateInfo,
    required TResult Function(User user) resgiter,
    required TResult Function(String eamil, String password) login,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? logout,
    TResult? Function()? refreshToken,
    TResult? Function(User user, bool isSend)? updateInfo,
    TResult? Function(User user)? resgiter,
    TResult? Function(String eamil, String password)? login,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? logout,
    TResult Function()? refreshToken,
    TResult Function(User user, bool isSend)? updateInfo,
    TResult Function(User user)? resgiter,
    TResult Function(String eamil, String password)? login,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Logout value) logout,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_UpdateInfoEvent value) updateInfo,
    required TResult Function(_ResgiterEvent value) resgiter,
    required TResult Function(_LoginEvent value) login,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_UpdateInfoEvent value)? updateInfo,
    TResult? Function(_ResgiterEvent value)? resgiter,
    TResult? Function(_LoginEvent value)? login,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Logout value)? logout,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_UpdateInfoEvent value)? updateInfo,
    TResult Function(_ResgiterEvent value)? resgiter,
    TResult Function(_LoginEvent value)? login,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements CheckAuthEvent {
  const factory _Logout() = _$LogoutImpl;
}

/// @nodoc
abstract class _$$RefreshTokenImplCopyWith<$Res> {
  factory _$$RefreshTokenImplCopyWith(
          _$RefreshTokenImpl value, $Res Function(_$RefreshTokenImpl) then) =
      __$$RefreshTokenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshTokenImplCopyWithImpl<$Res>
    extends _$CheckAuthEventCopyWithImpl<$Res, _$RefreshTokenImpl>
    implements _$$RefreshTokenImplCopyWith<$Res> {
  __$$RefreshTokenImplCopyWithImpl(
      _$RefreshTokenImpl _value, $Res Function(_$RefreshTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckAuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshTokenImpl implements _RefreshToken {
  const _$RefreshTokenImpl();

  @override
  String toString() {
    return 'CheckAuthEvent.refreshToken()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshTokenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() logout,
    required TResult Function() refreshToken,
    required TResult Function(User user, bool isSend) updateInfo,
    required TResult Function(User user) resgiter,
    required TResult Function(String eamil, String password) login,
  }) {
    return refreshToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? logout,
    TResult? Function()? refreshToken,
    TResult? Function(User user, bool isSend)? updateInfo,
    TResult? Function(User user)? resgiter,
    TResult? Function(String eamil, String password)? login,
  }) {
    return refreshToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? logout,
    TResult Function()? refreshToken,
    TResult Function(User user, bool isSend)? updateInfo,
    TResult Function(User user)? resgiter,
    TResult Function(String eamil, String password)? login,
    required TResult orElse(),
  }) {
    if (refreshToken != null) {
      return refreshToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Logout value) logout,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_UpdateInfoEvent value) updateInfo,
    required TResult Function(_ResgiterEvent value) resgiter,
    required TResult Function(_LoginEvent value) login,
  }) {
    return refreshToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_UpdateInfoEvent value)? updateInfo,
    TResult? Function(_ResgiterEvent value)? resgiter,
    TResult? Function(_LoginEvent value)? login,
  }) {
    return refreshToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Logout value)? logout,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_UpdateInfoEvent value)? updateInfo,
    TResult Function(_ResgiterEvent value)? resgiter,
    TResult Function(_LoginEvent value)? login,
    required TResult orElse(),
  }) {
    if (refreshToken != null) {
      return refreshToken(this);
    }
    return orElse();
  }
}

abstract class _RefreshToken implements CheckAuthEvent {
  const factory _RefreshToken() = _$RefreshTokenImpl;
}

/// @nodoc
abstract class _$$UpdateInfoEventImplCopyWith<$Res> {
  factory _$$UpdateInfoEventImplCopyWith(_$UpdateInfoEventImpl value,
          $Res Function(_$UpdateInfoEventImpl) then) =
      __$$UpdateInfoEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user, bool isSend});

  $UserCopyWith<$Res> get user;
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
    Object? isSend = null,
  }) {
    return _then(_$UpdateInfoEventImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      isSend: null == isSend
          ? _value.isSend
          : isSend // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of CheckAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UpdateInfoEventImpl implements _UpdateInfoEvent {
  const _$UpdateInfoEventImpl({required this.user, this.isSend = false});

  @override
  final User user;
  @override
  @JsonKey()
  final bool isSend;

  @override
  String toString() {
    return 'CheckAuthEvent.updateInfo(user: $user, isSend: $isSend)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateInfoEventImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isSend, isSend) || other.isSend == isSend));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, isSend);

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
    required TResult Function() logout,
    required TResult Function() refreshToken,
    required TResult Function(User user, bool isSend) updateInfo,
    required TResult Function(User user) resgiter,
    required TResult Function(String eamil, String password) login,
  }) {
    return updateInfo(user, isSend);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? logout,
    TResult? Function()? refreshToken,
    TResult? Function(User user, bool isSend)? updateInfo,
    TResult? Function(User user)? resgiter,
    TResult? Function(String eamil, String password)? login,
  }) {
    return updateInfo?.call(user, isSend);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? logout,
    TResult Function()? refreshToken,
    TResult Function(User user, bool isSend)? updateInfo,
    TResult Function(User user)? resgiter,
    TResult Function(String eamil, String password)? login,
    required TResult orElse(),
  }) {
    if (updateInfo != null) {
      return updateInfo(user, isSend);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Logout value) logout,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_UpdateInfoEvent value) updateInfo,
    required TResult Function(_ResgiterEvent value) resgiter,
    required TResult Function(_LoginEvent value) login,
  }) {
    return updateInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_UpdateInfoEvent value)? updateInfo,
    TResult? Function(_ResgiterEvent value)? resgiter,
    TResult? Function(_LoginEvent value)? login,
  }) {
    return updateInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Logout value)? logout,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_UpdateInfoEvent value)? updateInfo,
    TResult Function(_ResgiterEvent value)? resgiter,
    TResult Function(_LoginEvent value)? login,
    required TResult orElse(),
  }) {
    if (updateInfo != null) {
      return updateInfo(this);
    }
    return orElse();
  }
}

abstract class _UpdateInfoEvent implements CheckAuthEvent {
  const factory _UpdateInfoEvent(
      {required final User user, final bool isSend}) = _$UpdateInfoEventImpl;

  User get user;
  bool get isSend;

  /// Create a copy of CheckAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateInfoEventImplCopyWith<_$UpdateInfoEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResgiterEventImplCopyWith<$Res> {
  factory _$$ResgiterEventImplCopyWith(
          _$ResgiterEventImpl value, $Res Function(_$ResgiterEventImpl) then) =
      __$$ResgiterEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$ResgiterEventImplCopyWithImpl<$Res>
    extends _$CheckAuthEventCopyWithImpl<$Res, _$ResgiterEventImpl>
    implements _$$ResgiterEventImplCopyWith<$Res> {
  __$$ResgiterEventImplCopyWithImpl(
      _$ResgiterEventImpl _value, $Res Function(_$ResgiterEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$ResgiterEventImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of CheckAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$ResgiterEventImpl implements _ResgiterEvent {
  const _$ResgiterEventImpl({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'CheckAuthEvent.resgiter(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResgiterEventImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of CheckAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResgiterEventImplCopyWith<_$ResgiterEventImpl> get copyWith =>
      __$$ResgiterEventImplCopyWithImpl<_$ResgiterEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() logout,
    required TResult Function() refreshToken,
    required TResult Function(User user, bool isSend) updateInfo,
    required TResult Function(User user) resgiter,
    required TResult Function(String eamil, String password) login,
  }) {
    return resgiter(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? logout,
    TResult? Function()? refreshToken,
    TResult? Function(User user, bool isSend)? updateInfo,
    TResult? Function(User user)? resgiter,
    TResult? Function(String eamil, String password)? login,
  }) {
    return resgiter?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? logout,
    TResult Function()? refreshToken,
    TResult Function(User user, bool isSend)? updateInfo,
    TResult Function(User user)? resgiter,
    TResult Function(String eamil, String password)? login,
    required TResult orElse(),
  }) {
    if (resgiter != null) {
      return resgiter(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Logout value) logout,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_UpdateInfoEvent value) updateInfo,
    required TResult Function(_ResgiterEvent value) resgiter,
    required TResult Function(_LoginEvent value) login,
  }) {
    return resgiter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_UpdateInfoEvent value)? updateInfo,
    TResult? Function(_ResgiterEvent value)? resgiter,
    TResult? Function(_LoginEvent value)? login,
  }) {
    return resgiter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Logout value)? logout,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_UpdateInfoEvent value)? updateInfo,
    TResult Function(_ResgiterEvent value)? resgiter,
    TResult Function(_LoginEvent value)? login,
    required TResult orElse(),
  }) {
    if (resgiter != null) {
      return resgiter(this);
    }
    return orElse();
  }
}

abstract class _ResgiterEvent implements CheckAuthEvent {
  const factory _ResgiterEvent({required final User user}) =
      _$ResgiterEventImpl;

  User get user;

  /// Create a copy of CheckAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResgiterEventImplCopyWith<_$ResgiterEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginEventImplCopyWith<$Res> {
  factory _$$LoginEventImplCopyWith(
          _$LoginEventImpl value, $Res Function(_$LoginEventImpl) then) =
      __$$LoginEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String eamil, String password});
}

/// @nodoc
class __$$LoginEventImplCopyWithImpl<$Res>
    extends _$CheckAuthEventCopyWithImpl<$Res, _$LoginEventImpl>
    implements _$$LoginEventImplCopyWith<$Res> {
  __$$LoginEventImplCopyWithImpl(
      _$LoginEventImpl _value, $Res Function(_$LoginEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eamil = null,
    Object? password = null,
  }) {
    return _then(_$LoginEventImpl(
      eamil: null == eamil
          ? _value.eamil
          : eamil // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginEventImpl implements _LoginEvent {
  const _$LoginEventImpl({required this.eamil, required this.password});

  @override
  final String eamil;
  @override
  final String password;

  @override
  String toString() {
    return 'CheckAuthEvent.login(eamil: $eamil, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEventImpl &&
            (identical(other.eamil, eamil) || other.eamil == eamil) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eamil, password);

  /// Create a copy of CheckAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEventImplCopyWith<_$LoginEventImpl> get copyWith =>
      __$$LoginEventImplCopyWithImpl<_$LoginEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() logout,
    required TResult Function() refreshToken,
    required TResult Function(User user, bool isSend) updateInfo,
    required TResult Function(User user) resgiter,
    required TResult Function(String eamil, String password) login,
  }) {
    return login(eamil, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? logout,
    TResult? Function()? refreshToken,
    TResult? Function(User user, bool isSend)? updateInfo,
    TResult? Function(User user)? resgiter,
    TResult? Function(String eamil, String password)? login,
  }) {
    return login?.call(eamil, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? logout,
    TResult Function()? refreshToken,
    TResult Function(User user, bool isSend)? updateInfo,
    TResult Function(User user)? resgiter,
    TResult Function(String eamil, String password)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(eamil, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Logout value) logout,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_UpdateInfoEvent value) updateInfo,
    required TResult Function(_ResgiterEvent value) resgiter,
    required TResult Function(_LoginEvent value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_UpdateInfoEvent value)? updateInfo,
    TResult? Function(_ResgiterEvent value)? resgiter,
    TResult? Function(_LoginEvent value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Logout value)? logout,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_UpdateInfoEvent value)? updateInfo,
    TResult Function(_ResgiterEvent value)? resgiter,
    TResult Function(_LoginEvent value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _LoginEvent implements CheckAuthEvent {
  const factory _LoginEvent(
      {required final String eamil,
      required final String password}) = _$LoginEventImpl;

  String get eamil;
  String get password;

  /// Create a copy of CheckAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginEventImplCopyWith<_$LoginEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CheckAuthState {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  bool get isAuth => throw _privateConstructorUsedError;
  bool get isEnpty => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  List<Region>? get regions => throw _privateConstructorUsedError;
  Auth? get auth => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

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
      {bool loading,
      bool error,
      bool isAuth,
      bool isEnpty,
      User user,
      List<Region>? regions,
      Auth? auth,
      String errorMessage});

  $UserCopyWith<$Res> get user;
  $AuthCopyWith<$Res>? get auth;
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
    Object? isEnpty = null,
    Object? user = null,
    Object? regions = freezed,
    Object? auth = freezed,
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
      isEnpty: null == isEnpty
          ? _value.isEnpty
          : isEnpty // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      regions: freezed == regions
          ? _value.regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<Region>?,
      auth: freezed == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as Auth?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of CheckAuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of CheckAuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthCopyWith<$Res>? get auth {
    if (_value.auth == null) {
      return null;
    }

    return $AuthCopyWith<$Res>(_value.auth!, (value) {
      return _then(_value.copyWith(auth: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheckAuthStateImplCopyWith<$Res>
    implements $CheckAuthStateCopyWith<$Res> {
  factory _$$CheckAuthStateImplCopyWith(_$CheckAuthStateImpl value,
          $Res Function(_$CheckAuthStateImpl) then) =
      __$$CheckAuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool error,
      bool isAuth,
      bool isEnpty,
      User user,
      List<Region>? regions,
      Auth? auth,
      String errorMessage});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $AuthCopyWith<$Res>? get auth;
}

/// @nodoc
class __$$CheckAuthStateImplCopyWithImpl<$Res>
    extends _$CheckAuthStateCopyWithImpl<$Res, _$CheckAuthStateImpl>
    implements _$$CheckAuthStateImplCopyWith<$Res> {
  __$$CheckAuthStateImplCopyWithImpl(
      _$CheckAuthStateImpl _value, $Res Function(_$CheckAuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckAuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? isAuth = null,
    Object? isEnpty = null,
    Object? user = null,
    Object? regions = freezed,
    Object? auth = freezed,
    Object? errorMessage = null,
  }) {
    return _then(_$CheckAuthStateImpl(
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
      isEnpty: null == isEnpty
          ? _value.isEnpty
          : isEnpty // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      regions: freezed == regions
          ? _value._regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<Region>?,
      auth: freezed == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as Auth?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckAuthStateImpl implements _CheckAuthState {
  _$CheckAuthStateImpl(
      {this.loading = false,
      this.error = false,
      this.isAuth = false,
      this.isEnpty = false,
      this.user = const User(
          id: 0,
          name: '',
          email: '',
          role: '',
          gander: '',
          region: '',
          academic_stage: {'stage': '', 'type': ""}),
      final List<Region>? regions,
      this.auth,
      this.errorMessage = ''})
      : _regions = regions;

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
  final bool isEnpty;
  @override
  @JsonKey()
  final User user;
  final List<Region>? _regions;
  @override
  List<Region>? get regions {
    final value = _regions;
    if (value == null) return null;
    if (_regions is EqualUnmodifiableListView) return _regions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Auth? auth;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'CheckAuthState(loading: $loading, error: $error, isAuth: $isAuth, isEnpty: $isEnpty, user: $user, regions: $regions, auth: $auth, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckAuthStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isAuth, isAuth) || other.isAuth == isAuth) &&
            (identical(other.isEnpty, isEnpty) || other.isEnpty == isEnpty) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._regions, _regions) &&
            (identical(other.auth, auth) || other.auth == auth) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, error, isAuth, isEnpty,
      user, const DeepCollectionEquality().hash(_regions), auth, errorMessage);

  /// Create a copy of CheckAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckAuthStateImplCopyWith<_$CheckAuthStateImpl> get copyWith =>
      __$$CheckAuthStateImplCopyWithImpl<_$CheckAuthStateImpl>(
          this, _$identity);
}

abstract class _CheckAuthState implements CheckAuthState {
  factory _CheckAuthState(
      {final bool loading,
      final bool error,
      final bool isAuth,
      final bool isEnpty,
      final User user,
      final List<Region>? regions,
      final Auth? auth,
      final String errorMessage}) = _$CheckAuthStateImpl;

  @override
  bool get loading;
  @override
  bool get error;
  @override
  bool get isAuth;
  @override
  bool get isEnpty;
  @override
  User get user;
  @override
  List<Region>? get regions;
  @override
  Auth? get auth;
  @override
  String get errorMessage;

  /// Create a copy of CheckAuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckAuthStateImplCopyWith<_$CheckAuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
