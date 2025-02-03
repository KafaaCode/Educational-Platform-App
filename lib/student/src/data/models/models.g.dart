// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseImpl _$$CourseImplFromJson(Map<String, dynamic> json) => _$CourseImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      evaluationRate: (json['evaluationRate'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
      discount: (json['discount'] as num).toDouble(),
      details: json['details'] as String,
      academic_stage: AcademicStage.fromJson(
          json['academic_stage'] as Map<String, dynamic>),
      teacher: Teacher.fromJson(json['teacher'] as Map<String, dynamic>),
      countVideos: (json['countVideos'] as num).toInt(),
      created_at: DateTime.parse(json['created_at'] as String),
      updated_at: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$CourseImplToJson(_$CourseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'evaluationRate': instance.evaluationRate,
      'price': instance.price,
      'discount': instance.discount,
      'details': instance.details,
      'academic_stage': instance.academic_stage,
      'teacher': instance.teacher,
      'countVideos': instance.countVideos,
      'created_at': instance.created_at.toIso8601String(),
      'updated_at': instance.updated_at.toIso8601String(),
    };

_$AcademicStageImpl _$$AcademicStageImplFromJson(Map<String, dynamic> json) =>
    _$AcademicStageImpl(
      stage: json['stage'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$AcademicStageImplToJson(_$AcademicStageImpl instance) =>
    <String, dynamic>{
      'stage': instance.stage,
      'type': instance.type,
    };

_$TeacherImpl _$$TeacherImplFromJson(Map<String, dynamic> json) =>
    _$TeacherImpl(
      id: (json['id'] as num).toInt(),
      gander: json['gander'] as String,
      phoneNumber: json['phoneNumber'] as String,
      region: Region.fromJson(json['region'] as Map<String, dynamic>),
      specialization: Specialization.fromJson(
          json['specialization'] as Map<String, dynamic>),
      evaluationRate: (json['evaluationRate'] as num).toDouble(),
      is_banned: (json['is_banned'] as num).toInt(),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TeacherImplToJson(_$TeacherImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'gander': instance.gander,
      'phoneNumber': instance.phoneNumber,
      'region': instance.region,
      'specialization': instance.specialization,
      'evaluationRate': instance.evaluationRate,
      'is_banned': instance.is_banned,
      'user': instance.user,
    };

_$StudentImpl _$$StudentImplFromJson(Map<String, dynamic> json) =>
    _$StudentImpl(
      id: (json['id'] as num).toInt(),
      gander: json['gander'] as String,
      phoneNumber: json['phoneNumber'] as String,
      academic_stage: AcademicStage.fromJson(
          json['academic_stage'] as Map<String, dynamic>),
      region: Region.fromJson(json['region'] as Map<String, dynamic>),
      is_banned: (json['is_banned'] as num).toInt(),
    );

Map<String, dynamic> _$$StudentImplToJson(_$StudentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'gander': instance.gander,
      'phoneNumber': instance.phoneNumber,
      'academic_stage': instance.academic_stage,
      'region': instance.region,
      'is_banned': instance.is_banned,
    };

_$RegionImpl _$$RegionImplFromJson(Map<String, dynamic> json) => _$RegionImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$RegionImplToJson(_$RegionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
    };

_$SpecializationImpl _$$SpecializationImplFromJson(Map<String, dynamic> json) =>
    _$SpecializationImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      created_at: DateTime.parse(json['created_at'] as String),
      updated_at: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$SpecializationImplToJson(
        _$SpecializationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.created_at.toIso8601String(),
      'updated_at': instance.updated_at.toIso8601String(),
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      role: json['role'] as String,
      gander: json['gander'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      academic_stage: (json['academic_stage'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      region: json['region'] as String?,
      password: json['password'] as String?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'role': instance.role,
      'gander': instance.gander,
      'phoneNumber': instance.phoneNumber,
      'academic_stage': instance.academic_stage,
      'region': instance.region,
      'password': instance.password,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
    };

_$AuthImpl _$$AuthImplFromJson(Map<String, dynamic> json) => _$AuthImpl(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      student: Student.fromJson(json['student'] as Map<String, dynamic>),
      courses: (json['courses'] as List<dynamic>)
          .map((e) =>
              e == null ? null : Course.fromJson(e as Map<String, dynamic>))
          .toList(),
      elite_teachers: (json['elite_teachers'] as List<dynamic>)
          .map((e) =>
              e == null ? null : Teacher.fromJson(e as Map<String, dynamic>))
          .toList(),
      token: json['token'] as String,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$AuthImplToJson(_$AuthImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'student': instance.student,
      'courses': instance.courses,
      'elite_teachers': instance.elite_teachers,
      'token': instance.token,
      'message': instance.message,
    };
