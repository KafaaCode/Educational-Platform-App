import 'package:educational_platform_app/student/src/data/models/models.dart';

class InitModels {
  static User user() =>
      const User(id: 0, name: 'name', email: 'email', role: 'role');

  static AcademicStage academicStage() =>
      const AcademicStage(stage: 'stage', type: 'type');
  static Specialization specialization() => Specialization(
      id: 0,
      name: 'name',
      created_at: DateTime.now(),
      updated_at: DateTime.now());
  static Region region() => const Region(id: 0, name: 'name');

  static Teacher teacher() => Teacher(
      id: 0,
      gander: 'gander',
      phoneNumber: '0',
      region: region(),
      specialization: specialization(),
      evaluationRate: 0,
      is_banned: 0,
      user: user());
  static final Course course = Course(
      id: 0,
      name: 'name',
      evaluationRate: 0,
      is_enrolled: false,
      price: 0,
      discount: 0,
      details: 'details',
      academic_stage: academicStage(),
      teacher: teacher(),
      countVideos: 0,
      is_favorite: false,
      created_at: DateTime.now(),
      updated_at: DateTime.now());
}
