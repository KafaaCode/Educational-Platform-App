import 'package:educational_platform_app/core/routes/router_screens.dart';
import 'package:educational_platform_app/core/routes/routes_name.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/courses/courses_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/teacher_alerte/teacher_alerte_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/offers_discount/offers_discount_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/courseCard.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/sectionTitle.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/trainerGrid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isWideScreen = screenWidth >= 650;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(height: 6),
            SectionTitle(
                title: 'الدورات الأكثر شيوعًا',
                onTap: () {
                  AppRouter.router
                      .navigateTo(context, RoutesNames.coursesRoute);
                }),
            const SizedBox(height: 3),
            BlocBuilder<CoursesBloc, CoursesState>(builder: (context, state) {
              return _courses(context, state, isWideScreen);
            }),
            const SizedBox(height: 17),
            SectionTitle(
              title: 'نخبة المدربين',
              onTap: () {
                AppRouter.router.navigateTo(context, RoutesNames.teachersRoute);
              },
            ),
            BlocBuilder<TeacherAlerteBloc, TeacherAlerteState>(
                buildWhen: (previous, current) => previous != current,
                builder: (context, state) {
                  if (!state.loading && state.teachers.isNotEmpty) {
                    return Center(
                      child: Transform.translate(
                        offset: Offset(0, -20),
                        child: Wrap(
                            spacing: 0,
                            runSpacing: 0,
                            children: List.generate(
                                state.teachers.length < 4
                                    ? state.teachers.length
                                    : 4, (i) {
                              return TrainerGrid(
                                onTap: () {
                                  AppRouter.router.navigateTo(
                                    context,
                                    RoutesNames.teacherDetailsRoute,
                                    routeSettings: RouteSettings(
                                        arguments: state.teachers[i]),
                                  );
                                },
                                name: state.teachers[i].user?.name ?? '',
                                count_Student:
                                    state.teachers[i].is_banned.toString(),
                                path: 'assets/images/bg_intro_page1.png',
                                spaczaltion:
                                    state.teachers[i].specialization.name,
                              );
                            })),
                      ),
                    );
                  } else if (!state.loading && state.teachers.isEmpty) {
                    return const Center(child: Text('No alerts available.'));
                  } else if (state.loading) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    return Center(
                        child: SizedBox(
                            height: 200,
                            child: Text('error: ${state.errorMessage}')));
                  }
                }),
            SectionTitle(
              title: 'العروض والمحتوى المميز',
              onTap: () {
                AppRouter.router
                    .navigateTo(context, RoutesNames.offersDiscountRoute);
              },
            ),
            const SizedBox(
              height: 2,
            ),
            BlocBuilder<OffersDiscountBloc, OffersDiscountState>(
                builder: (context, state) {
              return _courses(context, state, isWideScreen);
            }),
          ],
        ),
      ),
    );
  }

  Widget _courses(BuildContext context, state, isWideScreen) {
    if (!state.loading && state.courses.isNotEmpty) {
      return SizedBox(
        height: 180,

        // Fixed height for PageView
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: state.courses.length,
          itemExtent: MediaQuery.of(context).size.width > 1000
              ? MediaQuery.of(context).size.width / 3
              : MediaQuery.of(context).size.width > 800
                  ? MediaQuery.of(context).size.width / 2
                  : MediaQuery.of(context).size.width > 600
                      ? MediaQuery.of(context).size.width * 3 / 4
                      : MediaQuery.of(context).size.width,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, i) {
            return CourseCard(
              course: state.courses[i],
              path: 'assets/images/backgroundAppbar.png',
            );
          },
        ),
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
