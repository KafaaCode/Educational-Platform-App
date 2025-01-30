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
      academicStage:
          AcademicStage.fromJson(json['academicStage'] as Map<String, dynamic>),
      teacher: Teacher.fromJson(json['teacher'] as Map<String, dynamic>),
      countVideos: (json['countVideos'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$CourseImplToJson(_$CourseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'evaluationRate': instance.evaluationRate,
      'price': instance.price,
      'discount': instance.discount,
      'details': instance.details,
      'academicStage': instance.academicStage,
      'teacher': instance.teacher,
      'countVideos': instance.countVideos,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
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
      gender: json['gender'] as String,
      phoneNumber: json['phoneNumber'] as String,
      region: Region.fromJson(json['region'] as Map<String, dynamic>),
      specialization: Specialization.fromJson(
          json['specialization'] as Map<String, dynamic>),
      evaluationRate: (json['evaluationRate'] as num).toDouble(),
      isBanned: (json['is_banned'] as num).toInt(),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TeacherImplToJson(_$TeacherImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'gender': instance.gender,
      'phoneNumber': instance.phoneNumber,
      'region': instance.region,
      'specialization': instance.specialization,
      'evaluationRate': instance.evaluationRate,
      'is_banned': instance.isBanned,
      'user': instance.user,
    };

_$RegionImpl _$$RegionImplFromJson(Map<String, dynamic> json) => _$RegionImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$RegionImplToJson(_$RegionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$SpecializationImpl _$$SpecializationImplFromJson(Map<String, dynamic> json) =>
    _$SpecializationImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$SpecializationImplToJson(
        _$SpecializationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      role: json['role'] as String,
      gander: json['gander'] as String,
      region: json['region'] as String,
      academicStage: Map<String, String>.from(json['academicStage'] as Map),
      password: json['password'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'role': instance.role,
      'gander': instance.gander,
      'region': instance.region,
      'academicStage': instance.academicStage,
      'password': instance.password,
      'phoneNumber': instance.phoneNumber,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$AuthImpl _$$AuthImplFromJson(Map<String, dynamic> json) => _$AuthImpl(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      courses: (json['courses'] as List<dynamic>)
          .map((e) => Course.fromJson(e as Map<String, dynamic>))
          .toList(),
      eliteTeachers: (json['eliteTeachers'] as List<dynamic>)
          .map((e) => Course.fromJson(e as Map<String, dynamic>))
          .toList(),
      token: json['token'] as String,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$AuthImplToJson(_$AuthImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'courses': instance.courses,
      'eliteTeachers': instance.eliteTeachers,
      'token': instance.token,
      'message': instance.message,
    };
