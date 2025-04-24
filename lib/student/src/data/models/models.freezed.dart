// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Course _$CourseFromJson(Map<String, dynamic> json) {
  return _Course.fromJson(json);
}

/// @nodoc
mixin _$Course {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get evaluationRate => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;
  bool get is_enrolled => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;
  AcademicStage? get academic_stage => throw _privateConstructorUsedError;
  Teacher get teacher => throw _privateConstructorUsedError;
  int get countVideos => throw _privateConstructorUsedError;
  bool get is_favorite => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_rate', nullable: true)
  int? get studentRate => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;

  /// Serializes this Course to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseCopyWith<Course> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res, Course>;
  @useResult
  $Res call(
      {int id,
      String name,
      double evaluationRate,
      double price,
      double discount,
      bool is_enrolled,
      String details,
      String? imagePath,
      AcademicStage? academic_stage,
      Teacher teacher,
      int countVideos,
      bool is_favorite,
      @JsonKey(name: 'student_rate', nullable: true) int? studentRate,
      DateTime? created_at,
      DateTime? updated_at});

  $AcademicStageCopyWith<$Res>? get academic_stage;
  $TeacherCopyWith<$Res> get teacher;
}

/// @nodoc
class _$CourseCopyWithImpl<$Res, $Val extends Course>
    implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? evaluationRate = null,
    Object? price = null,
    Object? discount = null,
    Object? is_enrolled = null,
    Object? details = null,
    Object? imagePath = freezed,
    Object? academic_stage = freezed,
    Object? teacher = null,
    Object? countVideos = null,
    Object? is_favorite = null,
    Object? studentRate = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      evaluationRate: null == evaluationRate
          ? _value.evaluationRate
          : evaluationRate // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      is_enrolled: null == is_enrolled
          ? _value.is_enrolled
          : is_enrolled // ignore: cast_nullable_to_non_nullable
              as bool,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      academic_stage: freezed == academic_stage
          ? _value.academic_stage
          : academic_stage // ignore: cast_nullable_to_non_nullable
              as AcademicStage?,
      teacher: null == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as Teacher,
      countVideos: null == countVideos
          ? _value.countVideos
          : countVideos // ignore: cast_nullable_to_non_nullable
              as int,
      is_favorite: null == is_favorite
          ? _value.is_favorite
          : is_favorite // ignore: cast_nullable_to_non_nullable
              as bool,
      studentRate: freezed == studentRate
          ? _value.studentRate
          : studentRate // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AcademicStageCopyWith<$Res>? get academic_stage {
    if (_value.academic_stage == null) {
      return null;
    }

    return $AcademicStageCopyWith<$Res>(_value.academic_stage!, (value) {
      return _then(_value.copyWith(academic_stage: value) as $Val);
    });
  }

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TeacherCopyWith<$Res> get teacher {
    return $TeacherCopyWith<$Res>(_value.teacher, (value) {
      return _then(_value.copyWith(teacher: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CourseImplCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$$CourseImplCopyWith(
          _$CourseImpl value, $Res Function(_$CourseImpl) then) =
      __$$CourseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      double evaluationRate,
      double price,
      double discount,
      bool is_enrolled,
      String details,
      String? imagePath,
      AcademicStage? academic_stage,
      Teacher teacher,
      int countVideos,
      bool is_favorite,
      @JsonKey(name: 'student_rate', nullable: true) int? studentRate,
      DateTime? created_at,
      DateTime? updated_at});

  @override
  $AcademicStageCopyWith<$Res>? get academic_stage;
  @override
  $TeacherCopyWith<$Res> get teacher;
}

/// @nodoc
class __$$CourseImplCopyWithImpl<$Res>
    extends _$CourseCopyWithImpl<$Res, _$CourseImpl>
    implements _$$CourseImplCopyWith<$Res> {
  __$$CourseImplCopyWithImpl(
      _$CourseImpl _value, $Res Function(_$CourseImpl) _then)
      : super(_value, _then);

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? evaluationRate = null,
    Object? price = null,
    Object? discount = null,
    Object? is_enrolled = null,
    Object? details = null,
    Object? imagePath = freezed,
    Object? academic_stage = freezed,
    Object? teacher = null,
    Object? countVideos = null,
    Object? is_favorite = null,
    Object? studentRate = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_$CourseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      evaluationRate: null == evaluationRate
          ? _value.evaluationRate
          : evaluationRate // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      is_enrolled: null == is_enrolled
          ? _value.is_enrolled
          : is_enrolled // ignore: cast_nullable_to_non_nullable
              as bool,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      academic_stage: freezed == academic_stage
          ? _value.academic_stage
          : academic_stage // ignore: cast_nullable_to_non_nullable
              as AcademicStage?,
      teacher: null == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as Teacher,
      countVideos: null == countVideos
          ? _value.countVideos
          : countVideos // ignore: cast_nullable_to_non_nullable
              as int,
      is_favorite: null == is_favorite
          ? _value.is_favorite
          : is_favorite // ignore: cast_nullable_to_non_nullable
              as bool,
      studentRate: freezed == studentRate
          ? _value.studentRate
          : studentRate // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseImpl implements _Course {
  const _$CourseImpl(
      {required this.id,
      required this.name,
      required this.evaluationRate,
      required this.price,
      required this.discount,
      required this.is_enrolled,
      required this.details,
      this.imagePath,
      required this.academic_stage,
      required this.teacher,
      required this.countVideos,
      required this.is_favorite,
      @JsonKey(name: 'student_rate', nullable: true) this.studentRate,
      this.created_at,
      this.updated_at});

  factory _$CourseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final double evaluationRate;
  @override
  final double price;
  @override
  final double discount;
  @override
  final bool is_enrolled;
  @override
  final String details;
  @override
  final String? imagePath;
  @override
  final AcademicStage? academic_stage;
  @override
  final Teacher teacher;
  @override
  final int countVideos;
  @override
  final bool is_favorite;
  @override
  @JsonKey(name: 'student_rate', nullable: true)
  final int? studentRate;
  @override
  final DateTime? created_at;
  @override
  final DateTime? updated_at;

  @override
  String toString() {
    return 'Course(id: $id, name: $name, evaluationRate: $evaluationRate, price: $price, discount: $discount, is_enrolled: $is_enrolled, details: $details, imagePath: $imagePath, academic_stage: $academic_stage, teacher: $teacher, countVideos: $countVideos, is_favorite: $is_favorite, studentRate: $studentRate, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.evaluationRate, evaluationRate) ||
                other.evaluationRate == evaluationRate) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.is_enrolled, is_enrolled) ||
                other.is_enrolled == is_enrolled) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.academic_stage, academic_stage) ||
                other.academic_stage == academic_stage) &&
            (identical(other.teacher, teacher) || other.teacher == teacher) &&
            (identical(other.countVideos, countVideos) ||
                other.countVideos == countVideos) &&
            (identical(other.is_favorite, is_favorite) ||
                other.is_favorite == is_favorite) &&
            (identical(other.studentRate, studentRate) ||
                other.studentRate == studentRate) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      evaluationRate,
      price,
      discount,
      is_enrolled,
      details,
      imagePath,
      academic_stage,
      teacher,
      countVideos,
      is_favorite,
      studentRate,
      created_at,
      updated_at);

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      __$$CourseImplCopyWithImpl<_$CourseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseImplToJson(
      this,
    );
  }
}

abstract class _Course implements Course {
  const factory _Course(
      {required final int id,
      required final String name,
      required final double evaluationRate,
      required final double price,
      required final double discount,
      required final bool is_enrolled,
      required final String details,
      final String? imagePath,
      required final AcademicStage? academic_stage,
      required final Teacher teacher,
      required final int countVideos,
      required final bool is_favorite,
      @JsonKey(name: 'student_rate', nullable: true) final int? studentRate,
      final DateTime? created_at,
      final DateTime? updated_at}) = _$CourseImpl;

  factory _Course.fromJson(Map<String, dynamic> json) = _$CourseImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  double get evaluationRate;
  @override
  double get price;
  @override
  double get discount;
  @override
  bool get is_enrolled;
  @override
  String get details;
  @override
  String? get imagePath;
  @override
  AcademicStage? get academic_stage;
  @override
  Teacher get teacher;
  @override
  int get countVideos;
  @override
  bool get is_favorite;
  @override
  @JsonKey(name: 'student_rate', nullable: true)
  int? get studentRate;
  @override
  DateTime? get created_at;
  @override
  DateTime? get updated_at;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AcademicStage _$AcademicStageFromJson(Map<String, dynamic> json) {
  return _AcademicStage.fromJson(json);
}

/// @nodoc
mixin _$AcademicStage {
  String? get stage => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  /// Serializes this AcademicStage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AcademicStage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AcademicStageCopyWith<AcademicStage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcademicStageCopyWith<$Res> {
  factory $AcademicStageCopyWith(
          AcademicStage value, $Res Function(AcademicStage) then) =
      _$AcademicStageCopyWithImpl<$Res, AcademicStage>;
  @useResult
  $Res call({String? stage, String? type});
}

/// @nodoc
class _$AcademicStageCopyWithImpl<$Res, $Val extends AcademicStage>
    implements $AcademicStageCopyWith<$Res> {
  _$AcademicStageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AcademicStage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      stage: freezed == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AcademicStageImplCopyWith<$Res>
    implements $AcademicStageCopyWith<$Res> {
  factory _$$AcademicStageImplCopyWith(
          _$AcademicStageImpl value, $Res Function(_$AcademicStageImpl) then) =
      __$$AcademicStageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? stage, String? type});
}

/// @nodoc
class __$$AcademicStageImplCopyWithImpl<$Res>
    extends _$AcademicStageCopyWithImpl<$Res, _$AcademicStageImpl>
    implements _$$AcademicStageImplCopyWith<$Res> {
  __$$AcademicStageImplCopyWithImpl(
      _$AcademicStageImpl _value, $Res Function(_$AcademicStageImpl) _then)
      : super(_value, _then);

  /// Create a copy of AcademicStage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = freezed,
    Object? type = freezed,
  }) {
    return _then(_$AcademicStageImpl(
      stage: freezed == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AcademicStageImpl implements _AcademicStage {
  const _$AcademicStageImpl({this.stage, this.type});

  factory _$AcademicStageImpl.fromJson(Map<String, dynamic> json) =>
      _$$AcademicStageImplFromJson(json);

  @override
  final String? stage;
  @override
  final String? type;

  @override
  String toString() {
    return 'AcademicStage(stage: $stage, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcademicStageImpl &&
            (identical(other.stage, stage) || other.stage == stage) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stage, type);

  /// Create a copy of AcademicStage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcademicStageImplCopyWith<_$AcademicStageImpl> get copyWith =>
      __$$AcademicStageImplCopyWithImpl<_$AcademicStageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AcademicStageImplToJson(
      this,
    );
  }
}

abstract class _AcademicStage implements AcademicStage {
  const factory _AcademicStage({final String? stage, final String? type}) =
      _$AcademicStageImpl;

  factory _AcademicStage.fromJson(Map<String, dynamic> json) =
      _$AcademicStageImpl.fromJson;

  @override
  String? get stage;
  @override
  String? get type;

  /// Create a copy of AcademicStage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcademicStageImplCopyWith<_$AcademicStageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Teacher _$TeacherFromJson(Map<String, dynamic> json) {
  return _Teacher.fromJson(json);
}

/// @nodoc
mixin _$Teacher {
  int get id => throw _privateConstructorUsedError;
  String get gander => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  Region get region => throw _privateConstructorUsedError;
  Specialization get specialization => throw _privateConstructorUsedError;
  int get is_banned => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  double? get evaluationRate => throw _privateConstructorUsedError;
  String? get introductoin => throw _privateConstructorUsedError;

  /// Serializes this Teacher to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Teacher
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherCopyWith<Teacher> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherCopyWith<$Res> {
  factory $TeacherCopyWith(Teacher value, $Res Function(Teacher) then) =
      _$TeacherCopyWithImpl<$Res, Teacher>;
  @useResult
  $Res call(
      {int id,
      String gander,
      String phoneNumber,
      Region region,
      Specialization specialization,
      int is_banned,
      User? user,
      double? evaluationRate,
      String? introductoin});

  $RegionCopyWith<$Res> get region;
  $SpecializationCopyWith<$Res> get specialization;
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$TeacherCopyWithImpl<$Res, $Val extends Teacher>
    implements $TeacherCopyWith<$Res> {
  _$TeacherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Teacher
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? gander = null,
    Object? phoneNumber = null,
    Object? region = null,
    Object? specialization = null,
    Object? is_banned = null,
    Object? user = freezed,
    Object? evaluationRate = freezed,
    Object? introductoin = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      gander: null == gander
          ? _value.gander
          : gander // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region,
      specialization: null == specialization
          ? _value.specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as Specialization,
      is_banned: null == is_banned
          ? _value.is_banned
          : is_banned // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      evaluationRate: freezed == evaluationRate
          ? _value.evaluationRate
          : evaluationRate // ignore: cast_nullable_to_non_nullable
              as double?,
      introductoin: freezed == introductoin
          ? _value.introductoin
          : introductoin // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Teacher
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegionCopyWith<$Res> get region {
    return $RegionCopyWith<$Res>(_value.region, (value) {
      return _then(_value.copyWith(region: value) as $Val);
    });
  }

  /// Create a copy of Teacher
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpecializationCopyWith<$Res> get specialization {
    return $SpecializationCopyWith<$Res>(_value.specialization, (value) {
      return _then(_value.copyWith(specialization: value) as $Val);
    });
  }

  /// Create a copy of Teacher
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TeacherImplCopyWith<$Res> implements $TeacherCopyWith<$Res> {
  factory _$$TeacherImplCopyWith(
          _$TeacherImpl value, $Res Function(_$TeacherImpl) then) =
      __$$TeacherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String gander,
      String phoneNumber,
      Region region,
      Specialization specialization,
      int is_banned,
      User? user,
      double? evaluationRate,
      String? introductoin});

  @override
  $RegionCopyWith<$Res> get region;
  @override
  $SpecializationCopyWith<$Res> get specialization;
  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$TeacherImplCopyWithImpl<$Res>
    extends _$TeacherCopyWithImpl<$Res, _$TeacherImpl>
    implements _$$TeacherImplCopyWith<$Res> {
  __$$TeacherImplCopyWithImpl(
      _$TeacherImpl _value, $Res Function(_$TeacherImpl) _then)
      : super(_value, _then);

  /// Create a copy of Teacher
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? gander = null,
    Object? phoneNumber = null,
    Object? region = null,
    Object? specialization = null,
    Object? is_banned = null,
    Object? user = freezed,
    Object? evaluationRate = freezed,
    Object? introductoin = freezed,
  }) {
    return _then(_$TeacherImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      gander: null == gander
          ? _value.gander
          : gander // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region,
      specialization: null == specialization
          ? _value.specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as Specialization,
      is_banned: null == is_banned
          ? _value.is_banned
          : is_banned // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      evaluationRate: freezed == evaluationRate
          ? _value.evaluationRate
          : evaluationRate // ignore: cast_nullable_to_non_nullable
              as double?,
      introductoin: freezed == introductoin
          ? _value.introductoin
          : introductoin // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeacherImpl implements _Teacher {
  const _$TeacherImpl(
      {required this.id,
      required this.gander,
      required this.phoneNumber,
      required this.region,
      required this.specialization,
      required this.is_banned,
      this.user,
      this.evaluationRate,
      this.introductoin});

  factory _$TeacherImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherImplFromJson(json);

  @override
  final int id;
  @override
  final String gander;
  @override
  final String phoneNumber;
  @override
  final Region region;
  @override
  final Specialization specialization;
  @override
  final int is_banned;
  @override
  final User? user;
  @override
  final double? evaluationRate;
  @override
  final String? introductoin;

  @override
  String toString() {
    return 'Teacher(id: $id, gander: $gander, phoneNumber: $phoneNumber, region: $region, specialization: $specialization, is_banned: $is_banned, user: $user, evaluationRate: $evaluationRate, introductoin: $introductoin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.gander, gander) || other.gander == gander) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.specialization, specialization) ||
                other.specialization == specialization) &&
            (identical(other.is_banned, is_banned) ||
                other.is_banned == is_banned) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.evaluationRate, evaluationRate) ||
                other.evaluationRate == evaluationRate) &&
            (identical(other.introductoin, introductoin) ||
                other.introductoin == introductoin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, gander, phoneNumber, region,
      specialization, is_banned, user, evaluationRate, introductoin);

  /// Create a copy of Teacher
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherImplCopyWith<_$TeacherImpl> get copyWith =>
      __$$TeacherImplCopyWithImpl<_$TeacherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherImplToJson(
      this,
    );
  }
}

abstract class _Teacher implements Teacher {
  const factory _Teacher(
      {required final int id,
      required final String gander,
      required final String phoneNumber,
      required final Region region,
      required final Specialization specialization,
      required final int is_banned,
      final User? user,
      final double? evaluationRate,
      final String? introductoin}) = _$TeacherImpl;

  factory _Teacher.fromJson(Map<String, dynamic> json) = _$TeacherImpl.fromJson;

  @override
  int get id;
  @override
  String get gander;
  @override
  String get phoneNumber;
  @override
  Region get region;
  @override
  Specialization get specialization;
  @override
  int get is_banned;
  @override
  User? get user;
  @override
  double? get evaluationRate;
  @override
  String? get introductoin;

  /// Create a copy of Teacher
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherImplCopyWith<_$TeacherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Student _$StudentFromJson(Map<String, dynamic> json) {
  return _Student.fromJson(json);
}

/// @nodoc
mixin _$Student {
  int get id => throw _privateConstructorUsedError;
  String get gander => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  AcademicStage get academic_stage => throw _privateConstructorUsedError;
  Region get region => throw _privateConstructorUsedError;
  int get is_banned => throw _privateConstructorUsedError;

  /// Serializes this Student to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentCopyWith<Student> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentCopyWith<$Res> {
  factory $StudentCopyWith(Student value, $Res Function(Student) then) =
      _$StudentCopyWithImpl<$Res, Student>;
  @useResult
  $Res call(
      {int id,
      String gander,
      String? imagePath,
      String phoneNumber,
      AcademicStage academic_stage,
      Region region,
      int is_banned});

  $AcademicStageCopyWith<$Res> get academic_stage;
  $RegionCopyWith<$Res> get region;
}

/// @nodoc
class _$StudentCopyWithImpl<$Res, $Val extends Student>
    implements $StudentCopyWith<$Res> {
  _$StudentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? gander = null,
    Object? imagePath = freezed,
    Object? phoneNumber = null,
    Object? academic_stage = null,
    Object? region = null,
    Object? is_banned = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      gander: null == gander
          ? _value.gander
          : gander // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      academic_stage: null == academic_stage
          ? _value.academic_stage
          : academic_stage // ignore: cast_nullable_to_non_nullable
              as AcademicStage,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region,
      is_banned: null == is_banned
          ? _value.is_banned
          : is_banned // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AcademicStageCopyWith<$Res> get academic_stage {
    return $AcademicStageCopyWith<$Res>(_value.academic_stage, (value) {
      return _then(_value.copyWith(academic_stage: value) as $Val);
    });
  }

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegionCopyWith<$Res> get region {
    return $RegionCopyWith<$Res>(_value.region, (value) {
      return _then(_value.copyWith(region: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudentImplCopyWith<$Res> implements $StudentCopyWith<$Res> {
  factory _$$StudentImplCopyWith(
          _$StudentImpl value, $Res Function(_$StudentImpl) then) =
      __$$StudentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String gander,
      String? imagePath,
      String phoneNumber,
      AcademicStage academic_stage,
      Region region,
      int is_banned});

  @override
  $AcademicStageCopyWith<$Res> get academic_stage;
  @override
  $RegionCopyWith<$Res> get region;
}

/// @nodoc
class __$$StudentImplCopyWithImpl<$Res>
    extends _$StudentCopyWithImpl<$Res, _$StudentImpl>
    implements _$$StudentImplCopyWith<$Res> {
  __$$StudentImplCopyWithImpl(
      _$StudentImpl _value, $Res Function(_$StudentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? gander = null,
    Object? imagePath = freezed,
    Object? phoneNumber = null,
    Object? academic_stage = null,
    Object? region = null,
    Object? is_banned = null,
  }) {
    return _then(_$StudentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      gander: null == gander
          ? _value.gander
          : gander // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      academic_stage: null == academic_stage
          ? _value.academic_stage
          : academic_stage // ignore: cast_nullable_to_non_nullable
              as AcademicStage,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region,
      is_banned: null == is_banned
          ? _value.is_banned
          : is_banned // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentImpl implements _Student {
  const _$StudentImpl(
      {required this.id,
      required this.gander,
      this.imagePath,
      required this.phoneNumber,
      required this.academic_stage,
      required this.region,
      required this.is_banned});

  factory _$StudentImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentImplFromJson(json);

  @override
  final int id;
  @override
  final String gander;
  @override
  final String? imagePath;
  @override
  final String phoneNumber;
  @override
  final AcademicStage academic_stage;
  @override
  final Region region;
  @override
  final int is_banned;

  @override
  String toString() {
    return 'Student(id: $id, gander: $gander, imagePath: $imagePath, phoneNumber: $phoneNumber, academic_stage: $academic_stage, region: $region, is_banned: $is_banned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.gander, gander) || other.gander == gander) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.academic_stage, academic_stage) ||
                other.academic_stage == academic_stage) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.is_banned, is_banned) ||
                other.is_banned == is_banned));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, gander, imagePath,
      phoneNumber, academic_stage, region, is_banned);

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentImplCopyWith<_$StudentImpl> get copyWith =>
      __$$StudentImplCopyWithImpl<_$StudentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentImplToJson(
      this,
    );
  }
}

abstract class _Student implements Student {
  const factory _Student(
      {required final int id,
      required final String gander,
      final String? imagePath,
      required final String phoneNumber,
      required final AcademicStage academic_stage,
      required final Region region,
      required final int is_banned}) = _$StudentImpl;

  factory _Student.fromJson(Map<String, dynamic> json) = _$StudentImpl.fromJson;

  @override
  int get id;
  @override
  String get gander;
  @override
  String? get imagePath;
  @override
  String get phoneNumber;
  @override
  AcademicStage get academic_stage;
  @override
  Region get region;
  @override
  int get is_banned;

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentImplCopyWith<_$StudentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Region _$RegionFromJson(Map<String, dynamic> json) {
  return _Region.fromJson(json);
}

/// @nodoc
mixin _$Region {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;

  /// Serializes this Region to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Region
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegionCopyWith<Region> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionCopyWith<$Res> {
  factory $RegionCopyWith(Region value, $Res Function(Region) then) =
      _$RegionCopyWithImpl<$Res, Region>;
  @useResult
  $Res call({int id, String name, DateTime? created_at, DateTime? updated_at});
}

/// @nodoc
class _$RegionCopyWithImpl<$Res, $Val extends Region>
    implements $RegionCopyWith<$Res> {
  _$RegionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Region
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegionImplCopyWith<$Res> implements $RegionCopyWith<$Res> {
  factory _$$RegionImplCopyWith(
          _$RegionImpl value, $Res Function(_$RegionImpl) then) =
      __$$RegionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, DateTime? created_at, DateTime? updated_at});
}

/// @nodoc
class __$$RegionImplCopyWithImpl<$Res>
    extends _$RegionCopyWithImpl<$Res, _$RegionImpl>
    implements _$$RegionImplCopyWith<$Res> {
  __$$RegionImplCopyWithImpl(
      _$RegionImpl _value, $Res Function(_$RegionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Region
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_$RegionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegionImpl implements _Region {
  const _$RegionImpl(
      {required this.id, required this.name, this.created_at, this.updated_at});

  factory _$RegionImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegionImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final DateTime? created_at;
  @override
  final DateTime? updated_at;

  @override
  String toString() {
    return 'Region(id: $id, name: $name, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, created_at, updated_at);

  /// Create a copy of Region
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegionImplCopyWith<_$RegionImpl> get copyWith =>
      __$$RegionImplCopyWithImpl<_$RegionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegionImplToJson(
      this,
    );
  }
}

abstract class _Region implements Region {
  const factory _Region(
      {required final int id,
      required final String name,
      final DateTime? created_at,
      final DateTime? updated_at}) = _$RegionImpl;

  factory _Region.fromJson(Map<String, dynamic> json) = _$RegionImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  DateTime? get created_at;
  @override
  DateTime? get updated_at;

  /// Create a copy of Region
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegionImplCopyWith<_$RegionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RefreshToken _$RefreshTokenFromJson(Map<String, dynamic> json) {
  return _RefreshToken.fromJson(json);
}

/// @nodoc
mixin _$RefreshToken {
  String get token => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Serializes this RefreshToken to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefreshToken
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefreshTokenCopyWith<RefreshToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshTokenCopyWith<$Res> {
  factory $RefreshTokenCopyWith(
          RefreshToken value, $Res Function(RefreshToken) then) =
      _$RefreshTokenCopyWithImpl<$Res, RefreshToken>;
  @useResult
  $Res call({String token, String message});
}

/// @nodoc
class _$RefreshTokenCopyWithImpl<$Res, $Val extends RefreshToken>
    implements $RefreshTokenCopyWith<$Res> {
  _$RefreshTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefreshToken
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefreshTokenImplCopyWith<$Res>
    implements $RefreshTokenCopyWith<$Res> {
  factory _$$RefreshTokenImplCopyWith(
          _$RefreshTokenImpl value, $Res Function(_$RefreshTokenImpl) then) =
      __$$RefreshTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, String message});
}

/// @nodoc
class __$$RefreshTokenImplCopyWithImpl<$Res>
    extends _$RefreshTokenCopyWithImpl<$Res, _$RefreshTokenImpl>
    implements _$$RefreshTokenImplCopyWith<$Res> {
  __$$RefreshTokenImplCopyWithImpl(
      _$RefreshTokenImpl _value, $Res Function(_$RefreshTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefreshToken
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? message = null,
  }) {
    return _then(_$RefreshTokenImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefreshTokenImpl implements _RefreshToken {
  const _$RefreshTokenImpl({required this.token, required this.message});

  factory _$RefreshTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefreshTokenImplFromJson(json);

  @override
  final String token;
  @override
  final String message;

  @override
  String toString() {
    return 'RefreshToken(token: $token, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshTokenImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, message);

  /// Create a copy of RefreshToken
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshTokenImplCopyWith<_$RefreshTokenImpl> get copyWith =>
      __$$RefreshTokenImplCopyWithImpl<_$RefreshTokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefreshTokenImplToJson(
      this,
    );
  }
}

abstract class _RefreshToken implements RefreshToken {
  const factory _RefreshToken(
      {required final String token,
      required final String message}) = _$RefreshTokenImpl;

  factory _RefreshToken.fromJson(Map<String, dynamic> json) =
      _$RefreshTokenImpl.fromJson;

  @override
  String get token;
  @override
  String get message;

  /// Create a copy of RefreshToken
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefreshTokenImplCopyWith<_$RefreshTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Specialization _$SpecializationFromJson(Map<String, dynamic> json) {
  return _Specialization.fromJson(json);
}

/// @nodoc
mixin _$Specialization {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;

  /// Serializes this Specialization to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Specialization
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpecializationCopyWith<Specialization> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecializationCopyWith<$Res> {
  factory $SpecializationCopyWith(
          Specialization value, $Res Function(Specialization) then) =
      _$SpecializationCopyWithImpl<$Res, Specialization>;
  @useResult
  $Res call({int id, String name, DateTime? created_at, DateTime? updated_at});
}

/// @nodoc
class _$SpecializationCopyWithImpl<$Res, $Val extends Specialization>
    implements $SpecializationCopyWith<$Res> {
  _$SpecializationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Specialization
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpecializationImplCopyWith<$Res>
    implements $SpecializationCopyWith<$Res> {
  factory _$$SpecializationImplCopyWith(_$SpecializationImpl value,
          $Res Function(_$SpecializationImpl) then) =
      __$$SpecializationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, DateTime? created_at, DateTime? updated_at});
}

/// @nodoc
class __$$SpecializationImplCopyWithImpl<$Res>
    extends _$SpecializationCopyWithImpl<$Res, _$SpecializationImpl>
    implements _$$SpecializationImplCopyWith<$Res> {
  __$$SpecializationImplCopyWithImpl(
      _$SpecializationImpl _value, $Res Function(_$SpecializationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Specialization
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_$SpecializationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpecializationImpl implements _Specialization {
  const _$SpecializationImpl(
      {required this.id, required this.name, this.created_at, this.updated_at});

  factory _$SpecializationImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecializationImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final DateTime? created_at;
  @override
  final DateTime? updated_at;

  @override
  String toString() {
    return 'Specialization(id: $id, name: $name, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, created_at, updated_at);

  /// Create a copy of Specialization
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecializationImplCopyWith<_$SpecializationImpl> get copyWith =>
      __$$SpecializationImplCopyWithImpl<_$SpecializationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecializationImplToJson(
      this,
    );
  }
}

abstract class _Specialization implements Specialization {
  const factory _Specialization(
      {required final int id,
      required final String name,
      final DateTime? created_at,
      final DateTime? updated_at}) = _$SpecializationImpl;

  factory _Specialization.fromJson(Map<String, dynamic> json) =
      _$SpecializationImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  DateTime? get created_at;
  @override
  DateTime? get updated_at;

  /// Create a copy of Specialization
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpecializationImplCopyWith<_$SpecializationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String? get gander => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  Map<String, dynamic>? get academic_stage =>
      throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      String role,
      String? gander,
      String? image,
      String? phoneNumber,
      Map<String, dynamic>? academic_stage,
      String? region,
      String? password,
      DateTime? created_at,
      DateTime? updated_at});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? role = null,
    Object? gander = freezed,
    Object? image = freezed,
    Object? phoneNumber = freezed,
    Object? academic_stage = freezed,
    Object? region = freezed,
    Object? password = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      gander: freezed == gander
          ? _value.gander
          : gander // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      academic_stage: freezed == academic_stage
          ? _value.academic_stage
          : academic_stage // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      String role,
      String? gander,
      String? image,
      String? phoneNumber,
      Map<String, dynamic>? academic_stage,
      String? region,
      String? password,
      DateTime? created_at,
      DateTime? updated_at});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? role = null,
    Object? gander = freezed,
    Object? image = freezed,
    Object? phoneNumber = freezed,
    Object? academic_stage = freezed,
    Object? region = freezed,
    Object? password = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      gander: freezed == gander
          ? _value.gander
          : gander // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      academic_stage: freezed == academic_stage
          ? _value._academic_stage
          : academic_stage // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {required this.id,
      required this.name,
      required this.email,
      required this.role,
      this.gander,
      this.image,
      this.phoneNumber,
      final Map<String, dynamic>? academic_stage,
      this.region,
      this.password,
      this.created_at,
      this.updated_at})
      : _academic_stage = academic_stage;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String role;
  @override
  final String? gander;
  @override
  final String? image;
  @override
  final String? phoneNumber;
  final Map<String, dynamic>? _academic_stage;
  @override
  Map<String, dynamic>? get academic_stage {
    final value = _academic_stage;
    if (value == null) return null;
    if (_academic_stage is EqualUnmodifiableMapView) return _academic_stage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? region;
  @override
  final String? password;
  @override
  final DateTime? created_at;
  @override
  final DateTime? updated_at;

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, role: $role, gander: $gander, image: $image, phoneNumber: $phoneNumber, academic_stage: $academic_stage, region: $region, password: $password, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.gander, gander) || other.gander == gander) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other._academic_stage, _academic_stage) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      email,
      role,
      gander,
      image,
      phoneNumber,
      const DeepCollectionEquality().hash(_academic_stage),
      region,
      password,
      created_at,
      updated_at);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final int id,
      required final String name,
      required final String email,
      required final String role,
      final String? gander,
      final String? image,
      final String? phoneNumber,
      final Map<String, dynamic>? academic_stage,
      final String? region,
      final String? password,
      final DateTime? created_at,
      final DateTime? updated_at}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get role;
  @override
  String? get gander;
  @override
  String? get image;
  @override
  String? get phoneNumber;
  @override
  Map<String, dynamic>? get academic_stage;
  @override
  String? get region;
  @override
  String? get password;
  @override
  DateTime? get created_at;
  @override
  DateTime? get updated_at;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Auth _$AuthFromJson(Map<String, dynamic> json) {
  return _Auth.fromJson(json);
}

/// @nodoc
mixin _$Auth {
  User get user => throw _privateConstructorUsedError;
  Student? get student => throw _privateConstructorUsedError;
  Teacher? get teacher => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this Auth to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Auth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthCopyWith<Auth> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthCopyWith<$Res> {
  factory $AuthCopyWith(Auth value, $Res Function(Auth) then) =
      _$AuthCopyWithImpl<$Res, Auth>;
  @useResult
  $Res call(
      {User user,
      Student? student,
      Teacher? teacher,
      String token,
      String? message});

  $UserCopyWith<$Res> get user;
  $StudentCopyWith<$Res>? get student;
  $TeacherCopyWith<$Res>? get teacher;
}

/// @nodoc
class _$AuthCopyWithImpl<$Res, $Val extends Auth>
    implements $AuthCopyWith<$Res> {
  _$AuthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Auth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? student = freezed,
    Object? teacher = freezed,
    Object? token = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as Teacher?,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Auth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of Auth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentCopyWith<$Res>? get student {
    if (_value.student == null) {
      return null;
    }

    return $StudentCopyWith<$Res>(_value.student!, (value) {
      return _then(_value.copyWith(student: value) as $Val);
    });
  }

  /// Create a copy of Auth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TeacherCopyWith<$Res>? get teacher {
    if (_value.teacher == null) {
      return null;
    }

    return $TeacherCopyWith<$Res>(_value.teacher!, (value) {
      return _then(_value.copyWith(teacher: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthImplCopyWith<$Res> implements $AuthCopyWith<$Res> {
  factory _$$AuthImplCopyWith(
          _$AuthImpl value, $Res Function(_$AuthImpl) then) =
      __$$AuthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User user,
      Student? student,
      Teacher? teacher,
      String token,
      String? message});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $StudentCopyWith<$Res>? get student;
  @override
  $TeacherCopyWith<$Res>? get teacher;
}

/// @nodoc
class __$$AuthImplCopyWithImpl<$Res>
    extends _$AuthCopyWithImpl<$Res, _$AuthImpl>
    implements _$$AuthImplCopyWith<$Res> {
  __$$AuthImplCopyWithImpl(_$AuthImpl _value, $Res Function(_$AuthImpl) _then)
      : super(_value, _then);

  /// Create a copy of Auth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? student = freezed,
    Object? teacher = freezed,
    Object? token = null,
    Object? message = freezed,
  }) {
    return _then(_$AuthImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as Teacher?,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthImpl implements _Auth {
  const _$AuthImpl(
      {required this.user,
      required this.student,
      required this.teacher,
      required this.token,
      this.message});

  factory _$AuthImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthImplFromJson(json);

  @override
  final User user;
  @override
  final Student? student;
  @override
  final Teacher? teacher;
  @override
  final String token;
  @override
  final String? message;

  @override
  String toString() {
    return 'Auth(user: $user, student: $student, teacher: $teacher, token: $token, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.teacher, teacher) || other.teacher == teacher) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, user, student, teacher, token, message);

  /// Create a copy of Auth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthImplCopyWith<_$AuthImpl> get copyWith =>
      __$$AuthImplCopyWithImpl<_$AuthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthImplToJson(
      this,
    );
  }
}

abstract class _Auth implements Auth {
  const factory _Auth(
      {required final User user,
      required final Student? student,
      required final Teacher? teacher,
      required final String token,
      final String? message}) = _$AuthImpl;

  factory _Auth.fromJson(Map<String, dynamic> json) = _$AuthImpl.fromJson;

  @override
  User get user;
  @override
  Student? get student;
  @override
  Teacher? get teacher;
  @override
  String get token;
  @override
  String? get message;

  /// Create a copy of Auth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthImplCopyWith<_$AuthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateData _$UpdateDataFromJson(Map<String, dynamic> json) {
  return _UpdateData.fromJson(json);
}

/// @nodoc
mixin _$UpdateData {
  User get user => throw _privateConstructorUsedError;
  Student get student => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this UpdateData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateDataCopyWith<UpdateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateDataCopyWith<$Res> {
  factory $UpdateDataCopyWith(
          UpdateData value, $Res Function(UpdateData) then) =
      _$UpdateDataCopyWithImpl<$Res, UpdateData>;
  @useResult
  $Res call({User user, Student student, String? message});

  $UserCopyWith<$Res> get user;
  $StudentCopyWith<$Res> get student;
}

/// @nodoc
class _$UpdateDataCopyWithImpl<$Res, $Val extends UpdateData>
    implements $UpdateDataCopyWith<$Res> {
  _$UpdateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? student = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of UpdateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of UpdateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentCopyWith<$Res> get student {
    return $StudentCopyWith<$Res>(_value.student, (value) {
      return _then(_value.copyWith(student: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateDataImplCopyWith<$Res>
    implements $UpdateDataCopyWith<$Res> {
  factory _$$UpdateDataImplCopyWith(
          _$UpdateDataImpl value, $Res Function(_$UpdateDataImpl) then) =
      __$$UpdateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, Student student, String? message});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $StudentCopyWith<$Res> get student;
}

/// @nodoc
class __$$UpdateDataImplCopyWithImpl<$Res>
    extends _$UpdateDataCopyWithImpl<$Res, _$UpdateDataImpl>
    implements _$$UpdateDataImplCopyWith<$Res> {
  __$$UpdateDataImplCopyWithImpl(
      _$UpdateDataImpl _value, $Res Function(_$UpdateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? student = null,
    Object? message = freezed,
  }) {
    return _then(_$UpdateDataImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateDataImpl implements _UpdateData {
  const _$UpdateDataImpl(
      {required this.user, required this.student, this.message});

  factory _$UpdateDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateDataImplFromJson(json);

  @override
  final User user;
  @override
  final Student student;
  @override
  final String? message;

  @override
  String toString() {
    return 'UpdateData(user: $user, student: $student, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDataImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, student, message);

  /// Create a copy of UpdateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDataImplCopyWith<_$UpdateDataImpl> get copyWith =>
      __$$UpdateDataImplCopyWithImpl<_$UpdateDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateDataImplToJson(
      this,
    );
  }
}

abstract class _UpdateData implements UpdateData {
  const factory _UpdateData(
      {required final User user,
      required final Student student,
      final String? message}) = _$UpdateDataImpl;

  factory _UpdateData.fromJson(Map<String, dynamic> json) =
      _$UpdateDataImpl.fromJson;

  @override
  User get user;
  @override
  Student get student;
  @override
  String? get message;

  /// Create a copy of UpdateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDataImplCopyWith<_$UpdateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Lesson _$LessonFromJson(Map<String, dynamic> json) {
  return _Lesson.fromJson(json);
}

/// @nodoc
mixin _$Lesson {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Video?> get videos => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this Lesson to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonCopyWith<Lesson> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonCopyWith<$Res> {
  factory $LessonCopyWith(Lesson value, $Res Function(Lesson) then) =
      _$LessonCopyWithImpl<$Res, Lesson>;
  @useResult
  $Res call({int id, String name, List<Video?> videos, String? message});
}

/// @nodoc
class _$LessonCopyWithImpl<$Res, $Val extends Lesson>
    implements $LessonCopyWith<$Res> {
  _$LessonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? videos = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video?>,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonImplCopyWith<$Res> implements $LessonCopyWith<$Res> {
  factory _$$LessonImplCopyWith(
          _$LessonImpl value, $Res Function(_$LessonImpl) then) =
      __$$LessonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, List<Video?> videos, String? message});
}

/// @nodoc
class __$$LessonImplCopyWithImpl<$Res>
    extends _$LessonCopyWithImpl<$Res, _$LessonImpl>
    implements _$$LessonImplCopyWith<$Res> {
  __$$LessonImplCopyWithImpl(
      _$LessonImpl _value, $Res Function(_$LessonImpl) _then)
      : super(_value, _then);

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? videos = null,
    Object? message = freezed,
  }) {
    return _then(_$LessonImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      videos: null == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video?>,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonImpl implements _Lesson {
  const _$LessonImpl(
      {required this.id,
      required this.name,
      required final List<Video?> videos,
      this.message})
      : _videos = videos;

  factory _$LessonImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<Video?> _videos;
  @override
  List<Video?> get videos {
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videos);
  }

  @override
  final String? message;

  @override
  String toString() {
    return 'Lesson(id: $id, name: $name, videos: $videos, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_videos), message);

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonImplCopyWith<_$LessonImpl> get copyWith =>
      __$$LessonImplCopyWithImpl<_$LessonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonImplToJson(
      this,
    );
  }
}

abstract class _Lesson implements Lesson {
  const factory _Lesson(
      {required final int id,
      required final String name,
      required final List<Video?> videos,
      final String? message}) = _$LessonImpl;

  factory _Lesson.fromJson(Map<String, dynamic> json) = _$LessonImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<Video?> get videos;
  @override
  String? get message;

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonImplCopyWith<_$LessonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Video _$VideoFromJson(Map<String, dynamic> json) {
  return _Video.fromJson(json);
}

/// @nodoc
mixin _$Video {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get linkVideo => throw _privateConstructorUsedError;
  String get attached => throw _privateConstructorUsedError;
  int? get progress_time => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this Video to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoCopyWith<Video> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCopyWith<$Res> {
  factory $VideoCopyWith(Video value, $Res Function(Video) then) =
      _$VideoCopyWithImpl<$Res, Video>;
  @useResult
  $Res call(
      {int id,
      String title,
      String? linkVideo,
      String attached,
      int? progress_time,
      int? size,
      String? message});
}

/// @nodoc
class _$VideoCopyWithImpl<$Res, $Val extends Video>
    implements $VideoCopyWith<$Res> {
  _$VideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? linkVideo = freezed,
    Object? attached = null,
    Object? progress_time = freezed,
    Object? size = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      linkVideo: freezed == linkVideo
          ? _value.linkVideo
          : linkVideo // ignore: cast_nullable_to_non_nullable
              as String?,
      attached: null == attached
          ? _value.attached
          : attached // ignore: cast_nullable_to_non_nullable
              as String,
      progress_time: freezed == progress_time
          ? _value.progress_time
          : progress_time // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoImplCopyWith<$Res> implements $VideoCopyWith<$Res> {
  factory _$$VideoImplCopyWith(
          _$VideoImpl value, $Res Function(_$VideoImpl) then) =
      __$$VideoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String? linkVideo,
      String attached,
      int? progress_time,
      int? size,
      String? message});
}

/// @nodoc
class __$$VideoImplCopyWithImpl<$Res>
    extends _$VideoCopyWithImpl<$Res, _$VideoImpl>
    implements _$$VideoImplCopyWith<$Res> {
  __$$VideoImplCopyWithImpl(
      _$VideoImpl _value, $Res Function(_$VideoImpl) _then)
      : super(_value, _then);

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? linkVideo = freezed,
    Object? attached = null,
    Object? progress_time = freezed,
    Object? size = freezed,
    Object? message = freezed,
  }) {
    return _then(_$VideoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      linkVideo: freezed == linkVideo
          ? _value.linkVideo
          : linkVideo // ignore: cast_nullable_to_non_nullable
              as String?,
      attached: null == attached
          ? _value.attached
          : attached // ignore: cast_nullable_to_non_nullable
              as String,
      progress_time: freezed == progress_time
          ? _value.progress_time
          : progress_time // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoImpl implements _Video {
  const _$VideoImpl(
      {required this.id,
      required this.title,
      required this.linkVideo,
      required this.attached,
      this.progress_time,
      this.size,
      this.message});

  factory _$VideoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String? linkVideo;
  @override
  final String attached;
  @override
  final int? progress_time;
  @override
  final int? size;
  @override
  final String? message;

  @override
  String toString() {
    return 'Video(id: $id, title: $title, linkVideo: $linkVideo, attached: $attached, progress_time: $progress_time, size: $size, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.linkVideo, linkVideo) ||
                other.linkVideo == linkVideo) &&
            (identical(other.attached, attached) ||
                other.attached == attached) &&
            (identical(other.progress_time, progress_time) ||
                other.progress_time == progress_time) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, linkVideo, attached,
      progress_time, size, message);

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
      __$$VideoImplCopyWithImpl<_$VideoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoImplToJson(
      this,
    );
  }
}

abstract class _Video implements Video {
  const factory _Video(
      {required final int id,
      required final String title,
      required final String? linkVideo,
      required final String attached,
      final int? progress_time,
      final int? size,
      final String? message}) = _$VideoImpl;

  factory _Video.fromJson(Map<String, dynamic> json) = _$VideoImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String? get linkVideo;
  @override
  String get attached;
  @override
  int? get progress_time;
  @override
  int? get size;
  @override
  String? get message;

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VideoTime _$VideoTimeFromJson(Map<String, dynamic> json) {
  return _VideoTime.fromJson(json);
}

/// @nodoc
mixin _$VideoTime {
  int get user_id => throw _privateConstructorUsedError;
  int get video_id => throw _privateConstructorUsedError;
  int? get progress_time => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;

  /// Serializes this VideoTime to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoTimeCopyWith<VideoTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoTimeCopyWith<$Res> {
  factory $VideoTimeCopyWith(VideoTime value, $Res Function(VideoTime) then) =
      _$VideoTimeCopyWithImpl<$Res, VideoTime>;
  @useResult
  $Res call({int user_id, int video_id, int? progress_time, int? size});
}

/// @nodoc
class _$VideoTimeCopyWithImpl<$Res, $Val extends VideoTime>
    implements $VideoTimeCopyWith<$Res> {
  _$VideoTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user_id = null,
    Object? video_id = null,
    Object? progress_time = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      video_id: null == video_id
          ? _value.video_id
          : video_id // ignore: cast_nullable_to_non_nullable
              as int,
      progress_time: freezed == progress_time
          ? _value.progress_time
          : progress_time // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoTimeImplCopyWith<$Res>
    implements $VideoTimeCopyWith<$Res> {
  factory _$$VideoTimeImplCopyWith(
          _$VideoTimeImpl value, $Res Function(_$VideoTimeImpl) then) =
      __$$VideoTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int user_id, int video_id, int? progress_time, int? size});
}

/// @nodoc
class __$$VideoTimeImplCopyWithImpl<$Res>
    extends _$VideoTimeCopyWithImpl<$Res, _$VideoTimeImpl>
    implements _$$VideoTimeImplCopyWith<$Res> {
  __$$VideoTimeImplCopyWithImpl(
      _$VideoTimeImpl _value, $Res Function(_$VideoTimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user_id = null,
    Object? video_id = null,
    Object? progress_time = freezed,
    Object? size = freezed,
  }) {
    return _then(_$VideoTimeImpl(
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      video_id: null == video_id
          ? _value.video_id
          : video_id // ignore: cast_nullable_to_non_nullable
              as int,
      progress_time: freezed == progress_time
          ? _value.progress_time
          : progress_time // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoTimeImpl implements _VideoTime {
  const _$VideoTimeImpl(
      {required this.user_id,
      required this.video_id,
      this.progress_time,
      this.size});

  factory _$VideoTimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoTimeImplFromJson(json);

  @override
  final int user_id;
  @override
  final int video_id;
  @override
  final int? progress_time;
  @override
  final int? size;

  @override
  String toString() {
    return 'VideoTime(user_id: $user_id, video_id: $video_id, progress_time: $progress_time, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoTimeImpl &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.video_id, video_id) ||
                other.video_id == video_id) &&
            (identical(other.progress_time, progress_time) ||
                other.progress_time == progress_time) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, user_id, video_id, progress_time, size);

  /// Create a copy of VideoTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoTimeImplCopyWith<_$VideoTimeImpl> get copyWith =>
      __$$VideoTimeImplCopyWithImpl<_$VideoTimeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoTimeImplToJson(
      this,
    );
  }
}

abstract class _VideoTime implements VideoTime {
  const factory _VideoTime(
      {required final int user_id,
      required final int video_id,
      final int? progress_time,
      final int? size}) = _$VideoTimeImpl;

  factory _VideoTime.fromJson(Map<String, dynamic> json) =
      _$VideoTimeImpl.fromJson;

  @override
  int get user_id;
  @override
  int get video_id;
  @override
  int? get progress_time;
  @override
  int? get size;

  /// Create a copy of VideoTime
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoTimeImplCopyWith<_$VideoTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
