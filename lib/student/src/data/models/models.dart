import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class Course with _$Course {
  const factory Course({
    required int id,
    required String name,
    required double evaluationRate,
    required double price,
    required double discount,
    required bool is_enrolled,
    required String details,
    String? imagePath,
    required AcademicStage? academic_stage,
    required Teacher teacher,
    required int countVideos,
    required bool is_favorite,
    @JsonKey(name: 'student_rate', nullable: true) int? studentRate,
    DateTime? created_at,
    DateTime? updated_at,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}

@freezed
class AcademicStage with _$AcademicStage {
  const factory AcademicStage({
    String? stage,
    String? type,
  }) = _AcademicStage;

  factory AcademicStage.fromJson(Map<String, dynamic> json) =>
      _$AcademicStageFromJson(json);
}

@freezed
class Teacher with _$Teacher {
  const factory Teacher({
    required int id,
    required String gander,
    required String phoneNumber,
    required Region region,
    required Specialization specialization,
    required int is_banned,
    User? user,
    double? evaluationRate,
    String? introductoin,
  }) = _Teacher;

  factory Teacher.fromJson(Map<String, dynamic> json) =>
      _$TeacherFromJson(json);
}

@freezed
class Student with _$Student {
  const factory Student({
    required int id,
    required String gander,
    String? imagePath,
    required String phoneNumber,
    required AcademicStage academic_stage,
    required Region region,
    required int is_banned,
    //required User user,
  }) = _Student;

  factory Student.fromJson(Map<String, dynamic> json) =>
      _$StudentFromJson(json);
}

@freezed
class Region with _$Region {
  const factory Region({
    required int id,
    required String name,
    DateTime? created_at,
    DateTime? updated_at,
  }) = _Region;

  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);
}

@freezed
class RefreshToken with _$RefreshToken {
  const factory RefreshToken({
    required String token,
    required String message,
  }) = _RefreshToken;

  factory RefreshToken.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenFromJson(json);
}

@freezed
class Specialization with _$Specialization {
  const factory Specialization({
    required int id,
    required String name,
    DateTime? created_at,
    DateTime? updated_at,
  }) = _Specialization;

  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String name,
    required String email,
    required String role,
    String? gander,
    String? image,
    String? phoneNumber,
    Map<String, dynamic>? academic_stage,
    String? region,
    String? password,
    DateTime? created_at,
    DateTime? updated_at,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Auth with _$Auth {
  const factory Auth({
    required User user,
    required Student? student,
    required Teacher? teacher,
    required String token,
    String? message,
  }) = _Auth;

  factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);
}

@freezed
class UpdateData with _$UpdateData {
  const factory UpdateData({
    required User user,
    required Student student,
    String? message,
  }) = _UpdateData;

  factory UpdateData.fromJson(Map<String, dynamic> json) =>
      _$UpdateDataFromJson(json);
}

@freezed
class Lesson with _$Lesson {
  const factory Lesson({
    required int id,
    required String name,
    required List<Video?> videos,
    String? message,
  }) = _Lesson;

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);
}

@freezed
class Video with _$Video {
  const factory Video({
    required int id,
    required String title,
    required String? linkVideo,
    required String attached,
    int? progress_time,
    int? size,
    String? message,
  }) = _Video;

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}

@freezed
class VideoTime with _$VideoTime {
  const factory VideoTime(
      {required int user_id,
      required int video_id,
      int? progress_time,
      int? size}) = _VideoTime;

  factory VideoTime.fromJson(Map<String, dynamic> json) =>
      _$VideoTimeFromJson(json);
}
