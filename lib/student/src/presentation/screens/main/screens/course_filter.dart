import 'package:educational_platform_app/core/services/services_locator.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/check_auth/check_auth_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/course_filter/course_filter_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/courseCard.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class CoursesFilterPage extends StatelessWidget {
  final String courseType;
  const CoursesFilterPage({super.key, required this.courseType});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          path: 'assets/images/bg_intro_page1.png',
          preferredSize: const Size.fromHeight(100),
          isCustom: true,
          child: BlocBuilder<CheckAuthBloc, CheckAuthState>(
            builder: (context, state) {
              // إذا كانت الحالة "نجاح" (isAuth)، نمرر اسم المستخدم
              if (state.isAuth) {
                return buildUserRow(userName: state.user.name);
              }

              // في حالة اللودينج أو الخطأ، لا نمرر اسم المستخدم
              return buildUserRow();
            },
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_things.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: BlocProvider(
            create: (context) => CourseFilterBloc(repository: sl())
              ..add(CourseFilterEvent.fetchCourses(CourseType: courseType)),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.02,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SizedBox(height: 20),
                    Text(
                        courseType == 'scientific'
                            ? 'دورات العلمي'
                            : 'دورات الأدبي',
                        style: const TextStyle(
                          fontSize: 18,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(height: 10),
                    BlocBuilder<CourseFilterBloc, CourseFilterState>(
                      builder: (context, state) {
                        return _courses(state, false, context);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  Widget _courses(state, isWideScreen, context) {
    if (!state.loading && state.courses.isNotEmpty) {
      return Center(
        child: Wrap(
            spacing: 2,
            runSpacing: 5,
            children: List.generate(state.courses.length, (i) {
              return SizedBox(
                  width: MediaQuery.of(context).size.width > 971
                      ? MediaQuery.of(context).size.width * 0.31
                      : MediaQuery.of(context).size.width > 800
                          ? MediaQuery.of(context).size.width * 0.47
                          : MediaQuery.of(context).size.width > 621
                              ? MediaQuery.of(context).size.width * 0.47
                              : MediaQuery.of(context).size.width * 0.99,
                  child: CourseCard(
                    course: state.courses[i],
                    path: 'assets/images/backgroundAppbar.png',
                  ));
            })),
      );
    } else {
      if (state.loading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else if (!state.loading && state.courses.isEmpty) {
        return const Center(child: Text('No courses found.'));
      } else if (state.loading) {
        return const Center(child: CircularProgressIndicator());
      } else {
        return Center(
            child: SizedBox(
                height: 200, child: Text('error: ${state.errorMessage}')));
      }
    }
  }

  Widget buildUserRow({String? userName}) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: Text(
                '${userName ?? ''} اختر دورتك المفضلة!',
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            const SizedBox(width: 10),
            SvgPicture.asset(
              'assets/images/star.svg',
              width: 30,
              height: 30,
              placeholderBuilder: (BuildContext context) => const SizedBox(
                width: 30,
                height: 30,
                child: Center(child: CircularProgressIndicator()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
