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
      is_enrolled: json['is_enrolled'] as bool,
      details: json['details'] as String,
      imagePath: json['imagePath'] as String?,
      academic_stage: json['academic_stage'] == null
          ? null
          : AcademicStage.fromJson(
              json['academic_stage'] as Map<String, dynamic>),
      teacher: Teacher.fromJson(json['teacher'] as Map<String, dynamic>),
      countVideos: (json['countVideos'] as num).toInt(),
      is_favorite: json['is_favorite'] as bool,
      studentRate: (json['student_rate'] as num?)?.toInt(),
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$CourseImplToJson(_$CourseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'evaluationRate': instance.evaluationRate,
      'price': instance.price,
      'discount': instance.discount,
      'is_enrolled': instance.is_enrolled,
      'details': instance.details,
      'imagePath': instance.imagePath,
      'academic_stage': instance.academic_stage,
      'teacher': instance.teacher,
      'countVideos': instance.countVideos,
      'is_favorite': instance.is_favorite,
      'student_rate': instance.studentRate,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
    };

_$AcademicStageImpl _$$AcademicStageImplFromJson(Map<String, dynamic> json) =>
    _$AcademicStageImpl(
      stage: json['stage'] as String?,
      type: json['type'] as String?,
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
      is_banned: (json['is_banned'] as num).toInt(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      evaluationRate: (json['evaluationRate'] as num?)?.toDouble(),
      introductoin: json['introductoin'] as String?,
    );

Map<String, dynamic> _$$TeacherImplToJson(_$TeacherImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'gander': instance.gander,
      'phoneNumber': instance.phoneNumber,
      'region': instance.region,
      'specialization': instance.specialization,
      'is_banned': instance.is_banned,
      'user': instance.user,
      'evaluationRate': instance.evaluationRate,
      'introductoin': instance.introductoin,
    };

_$StudentImpl _$$StudentImplFromJson(Map<String, dynamic> json) =>
    _$StudentImpl(
      id: (json['id'] as num).toInt(),
      gander: json['gander'] as String,
      imagePath: json['imagePath'] as String?,
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
      'imagePath': instance.imagePath,
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

_$RefreshTokenImpl _$$RefreshTokenImplFromJson(Map<String, dynamic> json) =>
    _$RefreshTokenImpl(
      token: json['token'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$RefreshTokenImplToJson(_$RefreshTokenImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'message': instance.message,
    };

_$SpecializationImpl _$$SpecializationImplFromJson(Map<String, dynamic> json) =>
    _$SpecializationImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$SpecializationImplToJson(
        _$SpecializationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      role: json['role'] as String,
      gander: json['gander'] as String?,
      image: json['image'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      academic_stage: json['academic_stage'] as Map<String, dynamic>?,
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
      'image': instance.image,
      'phoneNumber': instance.phoneNumber,
      'academic_stage': instance.academic_stage,
      'region': instance.region,
      'password': instance.password,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
    };

_$AuthImpl _$$AuthImplFromJson(Map<String, dynamic> json) => _$AuthImpl(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      student: json['student'] == null
          ? null
          : Student.fromJson(json['student'] as Map<String, dynamic>),
      teacher: json['teacher'] == null
          ? null
          : Teacher.fromJson(json['teacher'] as Map<String, dynamic>),
      token: json['token'] as String,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$AuthImplToJson(_$AuthImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'student': instance.student,
      'teacher': instance.teacher,
      'token': instance.token,
      'message': instance.message,
    };

_$UpdateDataImpl _$$UpdateDataImplFromJson(Map<String, dynamic> json) =>
    _$UpdateDataImpl(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      student: Student.fromJson(json['student'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$UpdateDataImplToJson(_$UpdateDataImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'student': instance.student,
      'message': instance.message,
    };

_$LessonImpl _$$LessonImplFromJson(Map<String, dynamic> json) => _$LessonImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      videos: (json['videos'] as List<dynamic>)
          .map((e) =>
              e == null ? null : Video.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$LessonImplToJson(_$LessonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'videos': instance.videos,
      'message': instance.message,
    };

_$VideoImpl _$$VideoImplFromJson(Map<String, dynamic> json) => _$VideoImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      linkVideo: json['linkVideo'] as String?,
      attached: json['attached'] as String,
      progress_time: (json['progress_time'] as num?)?.toInt(),
      size: (json['size'] as num?)?.toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$VideoImplToJson(_$VideoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'linkVideo': instance.linkVideo,
      'attached': instance.attached,
      'progress_time': instance.progress_time,
      'size': instance.size,
      'message': instance.message,
    };

_$VideoTimeImpl _$$VideoTimeImplFromJson(Map<String, dynamic> json) =>
    _$VideoTimeImpl(
      user_id: (json['user_id'] as num).toInt(),
      video_id: (json['video_id'] as num).toInt(),
      progress_time: (json['progress_time'] as num?)?.toInt(),
      size: (json['size'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$VideoTimeImplToJson(_$VideoTimeImpl instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'video_id': instance.video_id,
      'progress_time': instance.progress_time,
      'size': instance.size,
    };
