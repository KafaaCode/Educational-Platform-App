import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/textstyle.dart';
import 'package:flutter/material.dart';

class TestsWidget extends StatefulWidget {
  const TestsWidget({super.key});

  @override
  _TeacherPage createState() => _TeacherPage();
}

class _TeacherPage extends State<TestsWidget> {
  @override
  void dispose() {
    super.dispose();
  }

  final List<Map<String, String>> users = [
    {
      "name": "عادل حسين خزنوم",
      "message": "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة",
      "time": "10 دقيقة"
    },
    {
      "name": "محمد أحمد الاحمد",
      "message": "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة",
      "time": "10 دقيقة"
    },
    {
      "name": "علي شيخو",
      "message": "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة",
      "time": "10 دقيقة"
    },
    {
      "name": "حمزة",
      "message": "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة",
      "time": "10 دقيقة"
    },
  ];
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 5),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: theme.cardColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: theme.shadowColor.withOpacity(0.05),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      'assets/images/bg_intro_page1.png',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CourseInfoText(
                          value: users[index]["name"]!,
                          fontWeight: FontWeight.w500,
                          color: theme.textTheme.bodyLarge!.color!,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          users[index]["message"]!,
                          style: theme.textTheme.bodyMedium!.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CourseInfoText(
                        value: users[index]["time"]!,
                        fontWeight: FontWeight.w500,
                        color: theme.textTheme.bodyMedium!.color!,
                      ),
                      const SizedBox(height: 5),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: theme.primaryColor,
                        child: Text(
                          "2",
                          style: TextStyle(
                            color: theme.colorScheme.onPrimary,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ));
  }
}
