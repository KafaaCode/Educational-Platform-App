import 'package:educational_platform_app/core/localization/generated/l10n.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/courses_widget.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/main_widget.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/tests_widget.dart';
import 'package:educational_platform_app/student/src/presentation/screens/settings/setting_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    SettingPage(),
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
      appBar: AppBar(
        toolbarHeight: 200,
        elevation: 10, // إضافة ظل
        shadowColor: Colors.black.withOpacity(0.5), // لون الظل
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(120, 159, 128, 1),
                Color.fromRGBO(85, 148, 92, 1),
                Color.fromRGBO(75, 119, 86, 1),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.35),
              spreadRadius: 5,
              blurRadius: 19,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: BottomNavigationBar(
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              iconSize: 35,
              unselectedItemColor: Colors.black26,
              backgroundColor: Colors.black,
              // landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
              selectedItemColor: const Color.fromRGBO(85, 148, 92, 1),
              showUnselectedLabels: true,
              items: [
                BottomNavigationBarItem(
                  icon: const Icon(
                    Icons.person_2_outlined,
                  ),
                  label: lang.account,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.book_outlined),
                  label: lang.tests,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.emoji_events_outlined),
                  label: lang.courses,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.home_outlined),
                  label: lang.home,
                ),
              ],
            )),
      ),
      body: IndexedStack(
        sizing: StackFit.passthrough,
        index: _selectedIndex,
        children: _pages,
      ),
    );
  }
}
