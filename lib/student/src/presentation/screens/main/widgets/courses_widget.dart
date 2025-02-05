import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/courseCard.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/sectionTitle.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main_ui/main_ui_student.dart';
import 'package:flutter/material.dart';

class CoursesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
                Text(
            'جميع الدورات',
            style: const TextStyle(
              fontSize: 18,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.bold,
            ),
          ),
       
              Wrap(
        spacing: 2,
        runSpacing: 5,
        children: List.generate(6, (index) {
          return Container(
             width: MediaQuery.of(context).size.width > 971
             ?MediaQuery.of(context).size.width * 0.30
              :MediaQuery.of(context).size.width > 800
                ? MediaQuery.of(context).size.width * 0.47
                : MediaQuery.of(context).size.width > 621
                    ? MediaQuery.of(context).size.width * 0.47
                    : MediaQuery.of(context).size.width * 0.99,
                    child: CourseCard(
                            index: 2,
                            name: 'Ali sheakho',
                            time_triner: 10,
                            path: 'images/backgroundAppbar.png',
                            spaczaltion: 'التسويق الرقمي',
                            parce: 100,
                            evaluation: 5),
          );
        }),
              ),
         
          ],
        ),
      ),
    );
  }
}
