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
    required String details,
    required AcademicStage academicStage,
    required Teacher teacher,
    required int countVideos,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}

@freezed
class AcademicStage with _$AcademicStage {
  const factory AcademicStage({
    required String stage,
    required String type,
  }) = _AcademicStage;

  factory AcademicStage.fromJson(Map<String, dynamic> json) =>
      _$AcademicStageFromJson(json);
}

@freezed
class Teacher with _$Teacher {
  const factory Teacher({
    required int id,
    required String gender,
    required String phoneNumber,
    required Region region,
    required Specialization specialization,
    required double evaluationRate,
    @JsonKey(name: 'is_banned') required int isBanned,
    required User user,
  }) = _Teacher;

  factory Teacher.fromJson(Map<String, dynamic> json) =>
      _$TeacherFromJson(json);
}

@freezed
class Student with _$Student {
  const factory Student({
    required int id,
    required String gender,
    required String phoneNumber,
    required AcademicStage academicStage,
    required Region region,
    @JsonKey(name: 'is_banned') required int isBanned,
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
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Region;

  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);
}

@freezed
class Specialization with _$Specialization {
  const factory Specialization({
    required int id,
    required String name,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Specialization;

  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String name,
    required String email,
    required String role,
    String? password,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Auth with _$Auth {
  const factory Auth({
    required User user,
    required Student student,
    required List<Course?> courses,
    required List<Teacher?> eliteTeachers,
    required String token,
    String? message,
  }) = _Auth;

  factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);
}
