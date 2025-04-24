// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CourseDetailsState {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  bool get isEnpty => throw _privateConstructorUsedError;
  Course get course => throw _privateConstructorUsedError;
  List<Lesson> get lessons => throw _privateConstructorUsedError;

  /// Create a copy of CourseDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseDetailsStateCopyWith<CourseDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseDetailsStateCopyWith<$Res> {
  factory $CourseDetailsStateCopyWith(
          CourseDetailsState value, $Res Function(CourseDetailsState) then) =
      _$CourseDetailsStateCopyWithImpl<$Res, CourseDetailsState>;
  @useResult
  $Res call(
      {bool loading,
      bool error,
      String errorMessage,
      bool isDone,
      bool isEnpty,
      Course course,
      List<Lesson> lessons});

  $CourseCopyWith<$Res> get course;
}

/// @nodoc
class _$CourseDetailsStateCopyWithImpl<$Res, $Val extends CourseDetailsState>
    implements $CourseDetailsStateCopyWith<$Res> {
  _$CourseDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? errorMessage = null,
    Object? isDone = null,
    Object? isEnpty = null,
    Object? course = null,
    Object? lessons = null,
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
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
      lessons: null == lessons
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
    ) as $Val);
  }

  /// Create a copy of CourseDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CourseCopyWith<$Res> get course {
    return $CourseCopyWith<$Res>(_value.course, (value) {
      return _then(_value.copyWith(course: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CourseDetailsStateImplCopyWith<$Res>
    implements $CourseDetailsStateCopyWith<$Res> {
  factory _$$CourseDetailsStateImplCopyWith(_$CourseDetailsStateImpl value,
          $Res Function(_$CourseDetailsStateImpl) then) =
      __$$CourseDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool error,
      String errorMessage,
      bool isDone,
      bool isEnpty,
      Course course,
      List<Lesson> lessons});

  @override
  $CourseCopyWith<$Res> get course;
}

/// @nodoc
class __$$CourseDetailsStateImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res, _$CourseDetailsStateImpl>
    implements _$$CourseDetailsStateImplCopyWith<$Res> {
  __$$CourseDetailsStateImplCopyWithImpl(_$CourseDetailsStateImpl _value,
      $Res Function(_$CourseDetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? errorMessage = null,
    Object? isDone = null,
    Object? isEnpty = null,
    Object? course = null,
    Object? lessons = null,
  }) {
    return _then(_$CourseDetailsStateImpl(
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
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
      lessons: null == lessons
          ? _value._lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
    ));
  }
}

/// @nodoc

class _$CourseDetailsStateImpl
    with DiagnosticableTreeMixin
    implements _CourseDetailsState {
  const _$CourseDetailsStateImpl(
      {this.loading = false,
      this.error = false,
      this.errorMessage = '',
      this.isDone = false,
      this.isEnpty = false,
      this.course = const Course(
          id: 0,
          name: '',
          is_enrolled: false,
          evaluationRate: 0,
          price: 0,
          discount: 0,
          details: ' ',
          academic_stage: AcademicStage(),
          teacher: Teacher(
              id: 0,
              gander: '',
              phoneNumber: '',
              region: Region(id: 0, name: ''),
              specialization: Specialization(id: 0, name: ''),
              evaluationRate: 0,
              is_banned: 0,
              user: User(id: 0, name: '', email: '', role: '')),
          countVideos: 0,
          is_favorite: false),
      final List<Lesson> lessons = const []})
      : _lessons = lessons;

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
  @override
  @JsonKey()
  final Course course;
  final List<Lesson> _lessons;
  @override
  @JsonKey()
  List<Lesson> get lessons {
    if (_lessons is EqualUnmodifiableListView) return _lessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessons);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseDetailsState(loading: $loading, error: $error, errorMessage: $errorMessage, isDone: $isDone, isEnpty: $isEnpty, course: $course, lessons: $lessons)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CourseDetailsState'))
      ..add(DiagnosticsProperty('loading', loading))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('isDone', isDone))
      ..add(DiagnosticsProperty('isEnpty', isEnpty))
      ..add(DiagnosticsProperty('course', course))
      ..add(DiagnosticsProperty('lessons', lessons));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseDetailsStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.isEnpty, isEnpty) || other.isEnpty == isEnpty) &&
            (identical(other.course, course) || other.course == course) &&
            const DeepCollectionEquality().equals(other._lessons, _lessons));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, error, errorMessage,
      isDone, isEnpty, course, const DeepCollectionEquality().hash(_lessons));

  /// Create a copy of CourseDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseDetailsStateImplCopyWith<_$CourseDetailsStateImpl> get copyWith =>
      __$$CourseDetailsStateImplCopyWithImpl<_$CourseDetailsStateImpl>(
          this, _$identity);
}

abstract class _CourseDetailsState implements CourseDetailsState {
  const factory _CourseDetailsState(
      {final bool loading,
      final bool error,
      final String errorMessage,
      final bool isDone,
      final bool isEnpty,
      final Course course,
      final List<Lesson> lessons}) = _$CourseDetailsStateImpl;

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
  Course get course;
  @override
  List<Lesson> get lessons;

  /// Create a copy of CourseDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseDetailsStateImplCopyWith<_$CourseDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CourseDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) initCourse,
    required TResult Function(int courseId) getLessons,
    required TResult Function(int courseId) requestCourse,
    required TResult Function(Course course) toggleFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Course course)? initCourse,
    TResult? Function(int courseId)? getLessons,
    TResult? Function(int courseId)? requestCourse,
    TResult? Function(Course course)? toggleFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? initCourse,
    TResult Function(int courseId)? getLessons,
    TResult Function(int courseId)? requestCourse,
    TResult Function(Course course)? toggleFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitCourse value) initCourse,
    required TResult Function(_GetLessons value) getLessons,
    required TResult Function(_RequestCourse value) requestCourse,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitCourse value)? initCourse,
    TResult? Function(_GetLessons value)? getLessons,
    TResult? Function(_RequestCourse value)? requestCourse,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitCourse value)? initCourse,
    TResult Function(_GetLessons value)? getLessons,
    TResult Function(_RequestCourse value)? requestCourse,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseDetailsEventCopyWith<$Res> {
  factory $CourseDetailsEventCopyWith(
          CourseDetailsEvent value, $Res Function(CourseDetailsEvent) then) =
      _$CourseDetailsEventCopyWithImpl<$Res, CourseDetailsEvent>;
}

/// @nodoc
class _$CourseDetailsEventCopyWithImpl<$Res, $Val extends CourseDetailsEvent>
    implements $CourseDetailsEventCopyWith<$Res> {
  _$CourseDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitCourseImplCopyWith<$Res> {
  factory _$$InitCourseImplCopyWith(
          _$InitCourseImpl value, $Res Function(_$InitCourseImpl) then) =
      __$$InitCourseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Course course});

  $CourseCopyWith<$Res> get course;
}

/// @nodoc
class __$$InitCourseImplCopyWithImpl<$Res>
    extends _$CourseDetailsEventCopyWithImpl<$Res, _$InitCourseImpl>
    implements _$$InitCourseImplCopyWith<$Res> {
  __$$InitCourseImplCopyWithImpl(
      _$InitCourseImpl _value, $Res Function(_$InitCourseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = null,
  }) {
    return _then(_$InitCourseImpl(
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
    ));
  }

  /// Create a copy of CourseDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CourseCopyWith<$Res> get course {
    return $CourseCopyWith<$Res>(_value.course, (value) {
      return _then(_value.copyWith(course: value));
    });
  }
}

/// @nodoc

class _$InitCourseImpl with DiagnosticableTreeMixin implements _InitCourse {
  const _$InitCourseImpl({required this.course});

  @override
  final Course course;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseDetailsEvent.initCourse(course: $course)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CourseDetailsEvent.initCourse'))
      ..add(DiagnosticsProperty('course', course));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitCourseImpl &&
            (identical(other.course, course) || other.course == course));
  }

  @override
  int get hashCode => Object.hash(runtimeType, course);

  /// Create a copy of CourseDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitCourseImplCopyWith<_$InitCourseImpl> get copyWith =>
      __$$InitCourseImplCopyWithImpl<_$InitCourseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) initCourse,
    required TResult Function(int courseId) getLessons,
    required TResult Function(int courseId) requestCourse,
    required TResult Function(Course course) toggleFavorite,
  }) {
    return initCourse(course);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Course course)? initCourse,
    TResult? Function(int courseId)? getLessons,
    TResult? Function(int courseId)? requestCourse,
    TResult? Function(Course course)? toggleFavorite,
  }) {
    return initCourse?.call(course);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? initCourse,
    TResult Function(int courseId)? getLessons,
    TResult Function(int courseId)? requestCourse,
    TResult Function(Course course)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (initCourse != null) {
      return initCourse(course);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitCourse value) initCourse,
    required TResult Function(_GetLessons value) getLessons,
    required TResult Function(_RequestCourse value) requestCourse,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
  }) {
    return initCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitCourse value)? initCourse,
    TResult? Function(_GetLessons value)? getLessons,
    TResult? Function(_RequestCourse value)? requestCourse,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
  }) {
    return initCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitCourse value)? initCourse,
    TResult Function(_GetLessons value)? getLessons,
    TResult Function(_RequestCourse value)? requestCourse,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (initCourse != null) {
      return initCourse(this);
    }
    return orElse();
  }
}

abstract class _InitCourse implements CourseDetailsEvent {
  const factory _InitCourse({required final Course course}) = _$InitCourseImpl;

  Course get course;

  /// Create a copy of CourseDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitCourseImplCopyWith<_$InitCourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetLessonsImplCopyWith<$Res> {
  factory _$$GetLessonsImplCopyWith(
          _$GetLessonsImpl value, $Res Function(_$GetLessonsImpl) then) =
      __$$GetLessonsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int courseId});
}

/// @nodoc
class __$$GetLessonsImplCopyWithImpl<$Res>
    extends _$CourseDetailsEventCopyWithImpl<$Res, _$GetLessonsImpl>
    implements _$$GetLessonsImplCopyWith<$Res> {
  __$$GetLessonsImplCopyWithImpl(
      _$GetLessonsImpl _value, $Res Function(_$GetLessonsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
  }) {
    return _then(_$GetLessonsImpl(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetLessonsImpl with DiagnosticableTreeMixin implements _GetLessons {
  const _$GetLessonsImpl({required this.courseId});

  @override
  final int courseId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseDetailsEvent.getLessons(courseId: $courseId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CourseDetailsEvent.getLessons'))
      ..add(DiagnosticsProperty('courseId', courseId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLessonsImpl &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseId);

  /// Create a copy of CourseDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLessonsImplCopyWith<_$GetLessonsImpl> get copyWith =>
      __$$GetLessonsImplCopyWithImpl<_$GetLessonsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) initCourse,
    required TResult Function(int courseId) getLessons,
    required TResult Function(int courseId) requestCourse,
    required TResult Function(Course course) toggleFavorite,
  }) {
    return getLessons(courseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Course course)? initCourse,
    TResult? Function(int courseId)? getLessons,
    TResult? Function(int courseId)? requestCourse,
    TResult? Function(Course course)? toggleFavorite,
  }) {
    return getLessons?.call(courseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? initCourse,
    TResult Function(int courseId)? getLessons,
    TResult Function(int courseId)? requestCourse,
    TResult Function(Course course)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (getLessons != null) {
      return getLessons(courseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitCourse value) initCourse,
    required TResult Function(_GetLessons value) getLessons,
    required TResult Function(_RequestCourse value) requestCourse,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
  }) {
    return getLessons(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitCourse value)? initCourse,
    TResult? Function(_GetLessons value)? getLessons,
    TResult? Function(_RequestCourse value)? requestCourse,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
  }) {
    return getLessons?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitCourse value)? initCourse,
    TResult Function(_GetLessons value)? getLessons,
    TResult Function(_RequestCourse value)? requestCourse,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (getLessons != null) {
      return getLessons(this);
    }
    return orElse();
  }
}

abstract class _GetLessons implements CourseDetailsEvent {
  const factory _GetLessons({required final int courseId}) = _$GetLessonsImpl;

  int get courseId;

  /// Create a copy of CourseDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetLessonsImplCopyWith<_$GetLessonsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestCourseImplCopyWith<$Res> {
  factory _$$RequestCourseImplCopyWith(
          _$RequestCourseImpl value, $Res Function(_$RequestCourseImpl) then) =
      __$$RequestCourseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int courseId});
}

/// @nodoc
class __$$RequestCourseImplCopyWithImpl<$Res>
    extends _$CourseDetailsEventCopyWithImpl<$Res, _$RequestCourseImpl>
    implements _$$RequestCourseImplCopyWith<$Res> {
  __$$RequestCourseImplCopyWithImpl(
      _$RequestCourseImpl _value, $Res Function(_$RequestCourseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
  }) {
    return _then(_$RequestCourseImpl(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RequestCourseImpl
    with DiagnosticableTreeMixin
    implements _RequestCourse {
  const _$RequestCourseImpl({required this.courseId});

  @override
  final int courseId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseDetailsEvent.requestCourse(courseId: $courseId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CourseDetailsEvent.requestCourse'))
      ..add(DiagnosticsProperty('courseId', courseId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestCourseImpl &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseId);

  /// Create a copy of CourseDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestCourseImplCopyWith<_$RequestCourseImpl> get copyWith =>
      __$$RequestCourseImplCopyWithImpl<_$RequestCourseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) initCourse,
    required TResult Function(int courseId) getLessons,
    required TResult Function(int courseId) requestCourse,
    required TResult Function(Course course) toggleFavorite,
  }) {
    return requestCourse(courseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Course course)? initCourse,
    TResult? Function(int courseId)? getLessons,
    TResult? Function(int courseId)? requestCourse,
    TResult? Function(Course course)? toggleFavorite,
  }) {
    return requestCourse?.call(courseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? initCourse,
    TResult Function(int courseId)? getLessons,
    TResult Function(int courseId)? requestCourse,
    TResult Function(Course course)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (requestCourse != null) {
      return requestCourse(courseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitCourse value) initCourse,
    required TResult Function(_GetLessons value) getLessons,
    required TResult Function(_RequestCourse value) requestCourse,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
  }) {
    return requestCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitCourse value)? initCourse,
    TResult? Function(_GetLessons value)? getLessons,
    TResult? Function(_RequestCourse value)? requestCourse,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
  }) {
    return requestCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitCourse value)? initCourse,
    TResult Function(_GetLessons value)? getLessons,
    TResult Function(_RequestCourse value)? requestCourse,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (requestCourse != null) {
      return requestCourse(this);
    }
    return orElse();
  }
}

abstract class _RequestCourse implements CourseDetailsEvent {
  const factory _RequestCourse({required final int courseId}) =
      _$RequestCourseImpl;

  int get courseId;

  /// Create a copy of CourseDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestCourseImplCopyWith<_$RequestCourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleFavoriteImplCopyWith<$Res> {
  factory _$$ToggleFavoriteImplCopyWith(_$ToggleFavoriteImpl value,
          $Res Function(_$ToggleFavoriteImpl) then) =
      __$$ToggleFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Course course});

  $CourseCopyWith<$Res> get course;
}

/// @nodoc
class __$$ToggleFavoriteImplCopyWithImpl<$Res>
    extends _$CourseDetailsEventCopyWithImpl<$Res, _$ToggleFavoriteImpl>
    implements _$$ToggleFavoriteImplCopyWith<$Res> {
  __$$ToggleFavoriteImplCopyWithImpl(
      _$ToggleFavoriteImpl _value, $Res Function(_$ToggleFavoriteImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = null,
  }) {
    return _then(_$ToggleFavoriteImpl(
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
    ));
  }

  /// Create a copy of CourseDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CourseCopyWith<$Res> get course {
    return $CourseCopyWith<$Res>(_value.course, (value) {
      return _then(_value.copyWith(course: value));
    });
  }
}

/// @nodoc

class _$ToggleFavoriteImpl
    with DiagnosticableTreeMixin
    implements _ToggleFavorite {
  const _$ToggleFavoriteImpl({required this.course});

  @override
  final Course course;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseDetailsEvent.toggleFavorite(course: $course)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CourseDetailsEvent.toggleFavorite'))
      ..add(DiagnosticsProperty('course', course));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleFavoriteImpl &&
            (identical(other.course, course) || other.course == course));
  }

  @override
  int get hashCode => Object.hash(runtimeType, course);

  /// Create a copy of CourseDetailsEvent
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
    required TResult Function(Course course) initCourse,
    required TResult Function(int courseId) getLessons,
    required TResult Function(int courseId) requestCourse,
    required TResult Function(Course course) toggleFavorite,
  }) {
    return toggleFavorite(course);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Course course)? initCourse,
    TResult? Function(int courseId)? getLessons,
    TResult? Function(int courseId)? requestCourse,
    TResult? Function(Course course)? toggleFavorite,
  }) {
    return toggleFavorite?.call(course);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? initCourse,
    TResult Function(int courseId)? getLessons,
    TResult Function(int courseId)? requestCourse,
    TResult Function(Course course)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (toggleFavorite != null) {
      return toggleFavorite(course);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitCourse value) initCourse,
    required TResult Function(_GetLessons value) getLessons,
    required TResult Function(_RequestCourse value) requestCourse,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
  }) {
    return toggleFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitCourse value)? initCourse,
    TResult? Function(_GetLessons value)? getLessons,
    TResult? Function(_RequestCourse value)? requestCourse,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
  }) {
    return toggleFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitCourse value)? initCourse,
    TResult Function(_GetLessons value)? getLessons,
    TResult Function(_RequestCourse value)? requestCourse,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (toggleFavorite != null) {
      return toggleFavorite(this);
    }
    return orElse();
  }
}

abstract class _ToggleFavorite implements CourseDetailsEvent {
  const factory _ToggleFavorite({required final Course course}) =
      _$ToggleFavoriteImpl;

  Course get course;

  /// Create a copy of CourseDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleFavoriteImplCopyWith<_$ToggleFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
