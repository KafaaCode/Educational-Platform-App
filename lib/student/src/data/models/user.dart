import 'dart:convert';

class UserTest {
  final String id;
  final String name;
  final String email;
  final String role;
  final String gander;
  final String region;
  final Map<String, String> academicStage;
  final String? password;
  final String? phoneNumber;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const UserTest({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    required this.gander,
    required this.region,
    required this.academicStage,
    this.password,
    this.phoneNumber,
    this.createdAt,
    this.updatedAt,
  });

  UserTest copyWith({
    String? id,
    String? name,
    String? email,
    String? role,
    String? gander,
    String? region,
    Map<String, String>? academicStage,
    String? password,
    String? phoneNumber,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return UserTest(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      role: role ?? this.role,
      gander: gander ?? this.gander,
      region: region ?? this.region,
      academicStage: academicStage ?? this.academicStage,
      password: password ?? this.password,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'role': role,
      'gander': gander,
      'region': region,
      'academicStage': academicStage,
      'password': password,
      'phoneNumber': phoneNumber,
      'createdAt': createdAt?.millisecondsSinceEpoch,
      'updatedAt': updatedAt?.millisecondsSinceEpoch,
    };
  }

  factory UserTest.fromMap(Map<String, dynamic> map) {
    return UserTest(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      role: map['role'] ?? '',
      gander: map['gander'] ?? '',
      region: map['region'] ?? '',
      academicStage: Map<String, String>.from(map['academic_stage']),
      password: map['password'],
      phoneNumber: map['phoneNumber'],
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt']),
      updatedAt: DateTime.fromMillisecondsSinceEpoch(map['updatedAt']),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserTest.fromJson(String source) =>
      UserTest.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserTest(id: $id, name: $name, email: $email, role: $role, gander: $gander, region: $region, academicStage: $academicStage, password: $password, phoneNumber: $phoneNumber, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserTest &&
        other.id == id &&
        other.name == name &&
        other.email == email &&
        other.role == role &&
        other.gander == gander &&
        other.region == region &&
        other.academicStage == academicStage &&
        other.password == password &&
        other.phoneNumber == phoneNumber &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        email.hashCode ^
        role.hashCode ^
        gander.hashCode ^
        region.hashCode ^
        academicStage.hashCode ^
        password.hashCode ^
        phoneNumber.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }
}
