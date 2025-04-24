// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_video_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SelectVideoState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get isEmpty => throw _privateConstructorUsedError;
  bool get isfullScreen => throw _privateConstructorUsedError;
  Video get videos => throw _privateConstructorUsedError;
  VideoTime? get videoTime => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, bool isError, bool isSuccess,
            bool isEmpty, bool isfullScreen, Video videos, VideoTime? videoTime)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isLoading,
            bool isError,
            bool isSuccess,
            bool isEmpty,
            bool isfullScreen,
            Video videos,
            VideoTime? videoTime)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, bool isError, bool isSuccess, bool isEmpty,
            bool isfullScreen, Video videos, VideoTime? videoTime)?
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

  /// Create a copy of SelectVideoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectVideoStateCopyWith<SelectVideoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectVideoStateCopyWith<$Res> {
  factory $SelectVideoStateCopyWith(
          SelectVideoState value, $Res Function(SelectVideoState) then) =
      _$SelectVideoStateCopyWithImpl<$Res, SelectVideoState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      bool isSuccess,
      bool isEmpty,
      bool isfullScreen,
      Video videos,
      VideoTime? videoTime});

  $VideoCopyWith<$Res> get videos;
  $VideoTimeCopyWith<$Res>? get videoTime;
}

/// @nodoc
class _$SelectVideoStateCopyWithImpl<$Res, $Val extends SelectVideoState>
    implements $SelectVideoStateCopyWith<$Res> {
  _$SelectVideoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectVideoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? isSuccess = null,
    Object? isEmpty = null,
    Object? isfullScreen = null,
    Object? videos = null,
    Object? videoTime = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmpty: null == isEmpty
          ? _value.isEmpty
          : isEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
      isfullScreen: null == isfullScreen
          ? _value.isfullScreen
          : isfullScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as Video,
      videoTime: freezed == videoTime
          ? _value.videoTime
          : videoTime // ignore: cast_nullable_to_non_nullable
              as VideoTime?,
    ) as $Val);
  }

  /// Create a copy of SelectVideoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoCopyWith<$Res> get videos {
    return $VideoCopyWith<$Res>(_value.videos, (value) {
      return _then(_value.copyWith(videos: value) as $Val);
    });
  }

  /// Create a copy of SelectVideoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoTimeCopyWith<$Res>? get videoTime {
    if (_value.videoTime == null) {
      return null;
    }

    return $VideoTimeCopyWith<$Res>(_value.videoTime!, (value) {
      return _then(_value.copyWith(videoTime: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SelectVideoStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      bool isSuccess,
      bool isEmpty,
      bool isfullScreen,
      Video videos,
      VideoTime? videoTime});

  @override
  $VideoCopyWith<$Res> get videos;
  @override
  $VideoTimeCopyWith<$Res>? get videoTime;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SelectVideoStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectVideoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? isSuccess = null,
    Object? isEmpty = null,
    Object? isfullScreen = null,
    Object? videos = null,
    Object? videoTime = freezed,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmpty: null == isEmpty
          ? _value.isEmpty
          : isEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
      isfullScreen: null == isfullScreen
          ? _value.isfullScreen
          : isfullScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as Video,
      videoTime: freezed == videoTime
          ? _value.videoTime
          : videoTime // ignore: cast_nullable_to_non_nullable
              as VideoTime?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.isLoading = false,
      this.isError = false,
      this.isSuccess = false,
      this.isEmpty = true,
      this.isfullScreen = false,
      this.videos = const Video(id: 0, title: "", linkVideo: '', attached: ''),
      this.videoTime});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;
  @override
  @JsonKey()
  final bool isSuccess;
  @override
  @JsonKey()
  final bool isEmpty;
  @override
  @JsonKey()
  final bool isfullScreen;
  @override
  @JsonKey()
  final Video videos;
  @override
  final VideoTime? videoTime;

  @override
  String toString() {
    return 'SelectVideoState.initial(isLoading: $isLoading, isError: $isError, isSuccess: $isSuccess, isEmpty: $isEmpty, isfullScreen: $isfullScreen, videos: $videos, videoTime: $videoTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.isEmpty, isEmpty) || other.isEmpty == isEmpty) &&
            (identical(other.isfullScreen, isfullScreen) ||
                other.isfullScreen == isfullScreen) &&
            (identical(other.videos, videos) || other.videos == videos) &&
            (identical(other.videoTime, videoTime) ||
                other.videoTime == videoTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError, isSuccess,
      isEmpty, isfullScreen, videos, videoTime);

  /// Create a copy of SelectVideoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, bool isError, bool isSuccess,
            bool isEmpty, bool isfullScreen, Video videos, VideoTime? videoTime)
        initial,
  }) {
    return initial(isLoading, isError, isSuccess, isEmpty, isfullScreen, videos,
        videoTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isLoading,
            bool isError,
            bool isSuccess,
            bool isEmpty,
            bool isfullScreen,
            Video videos,
            VideoTime? videoTime)?
        initial,
  }) {
    return initial?.call(isLoading, isError, isSuccess, isEmpty, isfullScreen,
        videos, videoTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, bool isError, bool isSuccess, bool isEmpty,
            bool isfullScreen, Video videos, VideoTime? videoTime)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isLoading, isError, isSuccess, isEmpty, isfullScreen,
          videos, videoTime);
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

abstract class _Initial implements SelectVideoState {
  const factory _Initial(
      {final bool isLoading,
      final bool isError,
      final bool isSuccess,
      final bool isEmpty,
      final bool isfullScreen,
      final Video videos,
      final VideoTime? videoTime}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  bool get isSuccess;
  @override
  bool get isEmpty;
  @override
  bool get isfullScreen;
  @override
  Video get videos;
  @override
  VideoTime? get videoTime;

  /// Create a copy of SelectVideoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
