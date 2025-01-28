import 'package:flutter_flavor/flutter_flavor.dart';

void configureFlavors() {
  FlavorConfig(
    name: "Teacher",
    variables: {
      "apiUrl": "https://api.teacherapp.com",
    },
  );
}

void configureStudentFlavors() {
  FlavorConfig(
    name: "Student",
    variables: {
      "apiUrl": "https://api.studentapp.com",
    },
  );
}
