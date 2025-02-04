import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/courses_widget.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/customAppBar.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/main_widget.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/tests_widget.dart';
import 'package:educational_platform_app/student/src/presentation/screens/settings/setting_page.dart';
import 'package:educational_platform_app/student/src/presentation/screens/settings/widgets/appbar_account.dart';
import 'package:flutter/material.dart';

class MainUiScreen extends StatefulWidget {
  const MainUiScreen({super.key});

  @override
  State<MainUiScreen> createState() => _MainUiScreenState();
}

class _MainUiScreenState extends State<MainUiScreen> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    MainWidget(),
    TestsWidget(),
    CoursesWidget(),
    SettingPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
            preferredSize: _selectedIndex == 3
                ? const Size.fromHeight(190)
                : const Size.fromHeight(150),
            path: 'assets/images/bg_intro_page1.png',
            isCustom: _selectedIndex == 3,
            child: _selectedIndex == 3 ? const AppbarAccount() : null),
        body: IndexedStack(
          sizing: StackFit.passthrough,
          index: _selectedIndex,
          children: _pages,
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
              color: Color(0xFF588760),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            // backgroundColor: Color.fromRGBO(85, 148, 92, 1),
            onTap: _onItemTapped,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white60,
            items: const [
              BottomNavigationBarItem(
                backgroundColor: Color(0xFF588760),
                icon: Icon(Icons.home),
                label: 'الرئيسية',
              ),
              BottomNavigationBarItem(
                backgroundColor: Color(0xFF588760),
                icon: Icon(Icons.message),
                label: 'الرسائل',
              ),
              BottomNavigationBarItem(
                backgroundColor: Color(0xFF588760),
                icon: Icon(Icons.book),
                label: 'الدورات',
              ),
              BottomNavigationBarItem(
                backgroundColor: Color(0xFF588760),
                icon: Icon(Icons.person),
                label: 'الملف الشخصي',
              ),
            ],
          ),
        ));
  }
}
