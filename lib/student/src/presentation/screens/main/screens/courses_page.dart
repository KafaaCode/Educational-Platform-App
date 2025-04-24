import 'package:educational_platform_app/core/services/services_locator.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/courses/courses_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/courseCard.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  _TeacherPage createState() => _TeacherPage();
}

class _TeacherPage extends State<CoursesPage> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          path: 'assets/images/bg_intro_page1.png',
          preferredSize: Size.fromHeight(150),
         
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
            create: (context) =>
                CoursesBloc(sl())..add(const CoursesEvent.getCourses()),
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
                    const Text(
                      'الكورسات',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    BlocBuilder<CoursesBloc, CoursesState>(
                      builder: (context, state) {
                        return _courses(state, false);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  Widget _courses(state, isWideScreen) {
    if (!state.loading && state.courses.isNotEmpty) {
      return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: state.courses.length,
        itemBuilder: (context, i) {
          return CourseCard(
            course: state.courses[i],
            path: 'assets/images/backgroundAppbar.png',
          );
        },
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
