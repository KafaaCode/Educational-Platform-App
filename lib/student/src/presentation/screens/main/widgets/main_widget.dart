import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/courseCard.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/sectionTitle.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/trainerGrid.dart';
import 'package:flutter/material.dart';

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isWideScreen = screenWidth >= 650;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/bg_things.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              SectionTitle(title: 'الدورات الأكثر شيوعًا'),
              isWideScreen
                  ? Row(
                      children: [
                        Expanded(
                            child: CourseCard(
                                name: 'Ali sheakho',
                                time_triner: 10,
                                path: 'images/backgroundAppbar.png',
                                spaczaltion: 'التسويق الرقمي',
                                parce: 100,
                                evaluation: 5)),
                        const SizedBox(width: 10),
                        Expanded(
                            child: CourseCard(
                                name: 'Ali sheakho',
                                time_triner: 10,
                                path: 'images/backgroundAppbar.png',
                                spaczaltion: 'التسويق الرقمي',
                                parce: 100,
                                evaluation: 5)),
                      ],
                    )
                  : CourseCard(
                      name: 'Ali sheakho',
                      time_triner: 10,
                      path: 'images/backgroundAppbar.png',
                      spaczaltion: 'التسويق الرقمي',
                      parce: 100,
                      evaluation: 5),
              SectionTitle(title: 'نخبة المدربين'),
              TrainerGrid(
                  name: 'Adel kharzom',
                  count_Student: '1000',
                  path: 'assets/images/bg_intro_page1.png',
                  spaczaltion: 'التسويق الرقمي'),
              SectionTitle(title: 'العروض والمحتوى المميز'),
              isWideScreen
                  ? Row(
                      children: [
                        Expanded(
                            child: CourseCard(
                                name: 'Ali sheakho',
                                time_triner: 10,
                                path: 'images/backgroundAppbar.png',
                                spaczaltion: 'التسويق الرقمي',
                                parce: 100,
                                evaluation: 5)),
                        const SizedBox(width: 10),
                        Expanded(
                            child: CourseCard(
                                name: 'Ali sheakho',
                                time_triner: 10,
                                path: 'images/backgroundAppbar.png',
                                spaczaltion: 'التسويق الرقمي',
                                parce: 100,
                                evaluation: 5)),
                      ],
                    )
                  : CourseCard(
                      name: 'Ali sheakho',
                      time_triner: 10,
                      path: 'images/backgroundAppbar.png',
                      spaczaltion: 'التسويق الرقمي',
                      parce: 100,
                      evaluation: 5),
            ],
          ),
        ),
      ),
    );
  }
}
