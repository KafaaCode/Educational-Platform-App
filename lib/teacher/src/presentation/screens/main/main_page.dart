import 'package:educational_platform_app/core/localization/generated/l10n.dart';
import 'package:educational_platform_app/core/routes/routes_name.dart';
import 'package:educational_platform_app/teacher/src/presentation/screens/main/widgets/account_widget.dart';
import 'package:educational_platform_app/teacher/src/presentation/screens/main/widgets/courses_widget.dart';
import 'package:educational_platform_app/teacher/src/presentation/screens/main/widgets/customAppBar.dart';
import 'package:educational_platform_app/teacher/src/presentation/screens/main/widgets/main_widget.dart';
import 'package:educational_platform_app/teacher/src/presentation/screens/main/widgets/tests_widget.dart';
import 'package:flutter/material.dart';

class TeacherMainPage extends StatefulWidget {
  const TeacherMainPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<TeacherMainPage> {
  int _selectedIndex = 3;
  final List<Widget> _pages = [
    AccountWidget(),
    TestsWidget(),
    CoursesWidget(),
    MainWidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // تحديث الفهرس عند النقر على عنصر
    });
  }

  @override
  Widget build(BuildContext context) {
    Lang lang = Lang.of(context);
    return Scaffold(
      appBar: const TeacherCustomAppBar(
        path: "assets/images/backgroundAppbar.png",
      ),
      // tow floatingActionButton one left and one right
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton.extended(
              onPressed: () {
                Navigator.pushNamed(context, RoutesNames.teacherMainRoute);
              },
              label: const Text('lang.addCourse'),
              icon: const Icon(Icons.add),
              backgroundColor: Colors.blue,
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, RoutesNames.teacherMainRoute);
              },
              backgroundColor: Colors.blue,
            ),
          ],
        ),
      ),
      body: MainWidget(),
    );
  }
}
