import 'package:educational_platform_app/core/services/services_locator.dart';
import 'package:educational_platform_app/student/src/data/models/models.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/get_courses_from_teacher/get_courses_from_teacher_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/courseCard.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TeacherDetials extends StatelessWidget {
  TeacherDetials({super.key, required this.teacher});
  final Teacher teacher;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetCoursesFromTeacherBloc(sl())
        ..add(GetCoursesFromTeacherEvent.getCoursesFromTeacher(
            teacherId: teacher.id)),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/backgroundAppbar.png"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: const Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'معلومات المدرس',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Cairo',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 25,
            right: 10,
            left: 10,
            bottom: 20,
          ),
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/bg_things.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                width: double.infinity,
                height: double.infinity,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(
                      bottom: 80), // Add padding for bottom bar
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(75),
                            image: const DecorationImage(
                              image: AssetImage(
                                  'assets/images/bg_intro_page1.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          CourseInfoText(
                              value: 'اسم المدرس :',
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                          const SizedBox(width: 8),
                          CourseInfoText(
                              value: teacher.user?.name ?? '',
                              color: const Color.fromARGB(255, 90, 89, 87),
                              fontWeight: FontWeight.w700),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          CourseInfoText(
                              value: 'المنطقة :',
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                          const SizedBox(width: 8),
                          CourseInfoText(
                              value: teacher.region.name,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          CourseInfoText(
                              value: 'اختصاص المدرس :',
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                          Expanded(
                            child: Text(
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              teacher.specialization.name,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          CourseInfoText(
                              value: 'تقييم المدرس  :',
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                          const SizedBox(width: 8),
                          Row(
                            children: buildStars(
                                teacher.evaluationRate?.toInt() ?? 0,
                                400), // مثال لتقييم 4 نجوم
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          CourseInfoText(
                              value: 'عدد الطلاب  :',
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                          const SizedBox(width: 8),
                          const Text(
                            '0',
                            overflow: TextOverflow.visible,
                            maxLines: null,
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          CourseInfoText(
                              value: 'عدد الدورات  :',
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                          const SizedBox(width: 8),
                          BlocBuilder<GetCoursesFromTeacherBloc,
                              GetCoursesFromTeacherState>(
                            builder: (context, state) {
                              if (!state.isLoading) {
                                return Text(
                                  state.courses.length.toString(),
                                  overflow: TextOverflow.visible,
                                  maxLines: null,
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.bold,
                                  ),
                                );
                              } else {
                                return const Text('0');
                              }
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      BlocBuilder<GetCoursesFromTeacherBloc,
                          GetCoursesFromTeacherState>(
                        builder: (context, state) {
                          if (!state.isLoading && state.courses.isNotEmpty) {
                            return Container(
                              child: Wrap(
                                  spacing: 2,
                                  runSpacing: 5,
                                  children:
                                      List.generate(state.courses.length, (i) {
                                    return SizedBox(
                                        width: MediaQuery.of(context)
                                                    .size
                                                    .width >
                                                971
                                            ? MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.31
                                            : MediaQuery.of(context)
                                                        .size
                                                        .width >
                                                    800
                                                ? MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.47
                                                : MediaQuery.of(context)
                                                            .size
                                                            .width >
                                                        621
                                                    ? MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        0.47
                                                    : MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        0.99,
                                        child: CourseCard(
                                          course: state.courses[i],
                                          path:
                                              'assets/images/backgroundAppbar.png',
                                        ));
                                  })),
                            );
                          } else if (!state.isLoading &&
                              state.courses.isEmpty) {
                            return const Center(
                                child: Text('No lessons found.'));
                          } else if (state.isLoading) {
                            return const Center(
                                child: CircularProgressIndicator());
                          } else {
                            return Center(
                                child: SizedBox(
                                    height: 200,
                                    child:
                                        Text('error: ${state.errorMessage}')));
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> buildStars(int rating, double parentWidth) {
    return List.generate(
      5,
      (index) => Icon(
        index < rating ? Icons.star : Icons.star_border, // نجمة ممتلئة أو فارغة
        color: const Color(0xFFDFB547),
        size: parentWidth * 0.5 * 0.50 * 0.2,
      ),
    );
  }
}
