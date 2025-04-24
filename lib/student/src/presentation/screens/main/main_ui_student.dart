import 'package:educational_platform_app/core/services/services_locator.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/courses/courses_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/teacher_alerte/teacher_alerte_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/offers_discount/offers_discount_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/courses_widget.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/customAppBar.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/main_widget.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/tests_widget.dart';
import 'package:educational_platform_app/student/src/presentation/screens/settings/setting_page.dart';
import 'package:educational_platform_app/student/src/presentation/screens/settings/widgets/appbar_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainUiScreen extends StatefulWidget {
  const MainUiScreen({super.key});

  @override
  State<MainUiScreen> createState() => _MainUiScreenState();
}

class _MainUiScreenState extends State<MainUiScreen> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const MainWidget(),
    const TestsWidget(),
    const CoursesWidget(),
    SettingPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void setState(VoidCallback fn) {
    print("_____main ui______");
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          preferredSize: const Size.fromHeight(135),
          path: 'assets/images/bg_intro_page1.png',
          filterlist: 91,
          isCustom: _selectedIndex == 3,
          child: _selectedIndex == 3 ? const AppbarAccount() : null),
      body: MultiBlocProvider(
          providers: [
            BlocProvider(
                create: (_) =>
                    sl<CoursesBloc>()..add(const CoursesEvent.getCourses())),
            BlocProvider(
                create: (_) => sl<TeacherAlerteBloc>()
                  ..add(const TeacherAlerteEvent.getTeacherAlertes())),
            BlocProvider(
                create: (_) => sl<OffersDiscountBloc>()
                  ..add(const OffersDiscountEvent.getOffersDiscounts())),
          ],
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg_things.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: RefreshIndicator(
              onRefresh: () async {
                sl.get<CoursesBloc>().add(const CoursesEvent.getCourses());
                sl
                    .get<OffersDiscountBloc>()
                    .add(const OffersDiscountEvent.getOffersDiscounts());
                sl
                    .get<TeacherAlerteBloc>()
                    .add(const TeacherAlerteEvent.getTeacherAlertes());
              },
              child: IndexedStack(
                sizing: StackFit.passthrough,
                index: _selectedIndex,
                children: _pages,
              ),
            ),
          )),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: Container(
          height: 75,
          decoration: const BoxDecoration(
            color: Color(0xFF588760),
          ),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white60,
            backgroundColor: Colors.transparent,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'الرئيسية',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.message),
                label: 'الرسائل',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: 'الدورات',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'الملف الشخصي',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
