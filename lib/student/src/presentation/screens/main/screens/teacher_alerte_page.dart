import 'package:educational_platform_app/core/routes/router_screens.dart';
import 'package:educational_platform_app/core/routes/routes_name.dart';
import 'package:educational_platform_app/core/services/services_locator.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/teacher_alerte/teacher_alerte_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TeacherAlertePage extends StatefulWidget {
  @override
  _TeacherPage createState() => _TeacherPage();
}

class _TeacherPage extends State<TeacherAlertePage> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          path: 'assets/images/bg_intro_page1.png',
          preferredSize: Size.fromHeight(135),
          child: SizedBox(),
        ),
        body: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_things.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: BlocProvider(
            create: (context) => TeacherAlerteBloc(sl())
              ..add(const TeacherAlerteEvent.getTeacherAlertes()),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                  right: 13,
                  left: 13,
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const SizedBox(height: 20),
                      const Text(
                        'نخبة المدربين',
                        style: TextStyle(
                          fontSize: 15.5,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 10),
                      BlocBuilder<TeacherAlerteBloc, TeacherAlerteState>(
                        builder: (context, state) {
                          return Wrap(
                            spacing: /*  MediaQuery.of(context).size.width * 0.06, */
                                15,
                            runSpacing: 15,
                            children: List.generate(
                              state.teachers.length,
                              (i) {
                                return GestureDetector(
                                  onTap: () {
                                    AppRouter.router.navigateTo(context,
                                        RoutesNames.teacherDetailsRoute,
                                        routeSettings: RouteSettings(
                                            arguments: state.teachers[i]));
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).cardColor,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Theme.of(context)
                                              .shadowColor
                                              .withOpacity(0.1),
                                          spreadRadius: 2,
                                          blurRadius: 8,
                                          offset: const Offset(3, 3),
                                        ),
                                      ],
                                    ),
                                    height: 200,
                                    width: MediaQuery.of(context).size.width >
                                            971
                                        ? MediaQuery.of(context).size.width *
                                            0.27
                                        : MediaQuery.of(context).size.width >
                                                800
                                            ? MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.27
                                            : MediaQuery.of(context)
                                                        .size
                                                        .width >
                                                    621
                                                ? MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.44
                                                : MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.44,
                                    child: Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              0), // منحنيات جميلة
                                          child: SizedBox.expand(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                top: 8,
                                                right: 10,
                                                left: 8,
                                                bottom: 8,
                                              ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const SizedBox(height: 5),
                                                  ClipOval(
                                                    child: Image.asset(
                                                      'assets/images/bg_intro_page1.png',
                                                      width: 65,
                                                      height: 65,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 7),
                                                  Text(
                                                    state.teachers[i].user
                                                            ?.name ??
                                                        '',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: 'Cairo',
                                                      color: Theme.of(context)
                                                          .textTheme
                                                          .bodyMedium
                                                          ?.color,
                                                    ),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 1,
                                                  ),
                                                  const SizedBox(height: 5),
                                                  Text(
                                                    state.teachers[i]
                                                        .phoneNumber,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: 'Cairo',
                                                      color: Theme.of(context)
                                                          .textTheme
                                                          .bodyLarge
                                                          ?.color,
                                                    ),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 1,
                                                  ),
                                                  const SizedBox(height: 5),
                                                  Text(
                                                    'خبره تزيد عن 3 سنوات في برمجة الويب وتطوير واجهات المستخدم',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: 'Cairo',
                                                      color: Theme.of(context)
                                                          .textTheme
                                                          .bodyMedium
                                                          ?.color,
                                                    ),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 3,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 5),
                                            decoration: BoxDecoration(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .secondary,
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topRight: Radius.circular(20),
                                                topLeft: Radius.circular(5),
                                                bottomLeft: Radius.circular(0),
                                                bottomRight:
                                                    Radius.circular(20),
                                              ),
                                            ),
                                            child: const Text(
                                              '6 دورات',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
