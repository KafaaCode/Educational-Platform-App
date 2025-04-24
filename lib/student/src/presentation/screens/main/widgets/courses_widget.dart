import 'package:educational_platform_app/core/services/services_locator.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/my_courses/my_courses_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/courseCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoursesWidget extends StatefulWidget {
  const CoursesWidget({super.key});

  @override
  _CoursesWidget createState() => _CoursesWidget();
}

class _CoursesWidget extends State<CoursesWidget> {
  MyCoursesBloc bloc = sl.get<MyCoursesBloc>();

  @override
  void initState() {
    bloc.add(const MyCoursesEvent.getMyCourses());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.02, // 5% من العرض
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              'جميع دوراتي',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            BlocBuilder<MyCoursesBloc, MyCoursesState>(
                bloc: bloc,
                builder: (context, state) {
                  ThemeData theme = Theme.of(context);
                  if (!state.isLoading && !state.isError && !state.isEmpty) {
                    return Center(
                      child: Wrap(
                          spacing: 2,
                          runSpacing: 5,
                          children: List.generate(state.courses.length, (i) {
                            return SizedBox(
                                width: MediaQuery.of(context).size.width > 971
                                    ? MediaQuery.of(context).size.width * 0.31
                                    : MediaQuery.of(context).size.width > 800
                                        ? MediaQuery.of(context).size.width *
                                            0.47
                                        : MediaQuery.of(context).size.width >
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
                                  path: 'assets/images/backgroundAppbar.png',
                                ));
                          })),
                    );
                  } else {
                    if (state.isLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if (state.isError) {
                      return Center(
                          child: Text(" error: ${state.errorMessage}"));
                    }
                    return Center(
                        child: Text(
                      " not found courses",
                      style: theme.textTheme.bodyMedium,
                    ));
                  }
                }),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }
}
