import 'package:educational_platform_app/core/localization/generated/l10n.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/background.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/button.dart';
import 'package:educational_platform_app/teacher/src/presentation/screens/login/widgets/questions_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginQuestionsPages extends StatefulWidget {
  @override
  _LoginQuestionsPages createState() => _LoginQuestionsPages();
}

class _LoginQuestionsPages extends State<LoginQuestionsPages> {
  String? selectedFilter;

  @override
  Widget build(BuildContext context) {
    Lang lang = Lang.of(context);
    return Background(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset('assets/images/logo.png',
                    width: 150.w, height: 200.h),
                Text(
                  lang.academicStage,
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 50,
                    color: Colors.black87,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                QuestionsButton(
                  label: lang.basic,
                  isSelected: selectedFilter == 'basic',
                  onTap: () {
                    setState(() {
                      selectedFilter = 'basic';
                    });
                  },
                ),
                const SizedBox(height: 25),
                QuestionsButton(
                  label: lang.highSchool,
                  isSelected: selectedFilter == 'secondary',
                  onTap: () {
                    setState(() {
                      selectedFilter = 'secondary';
                    });
                  },
                ),
              ],
            ),
            Button(onPressed: () {}, text: lang.continueRegistration)
          ],
        ),
      ),
    );
  }
}

class LoginQuestionsPagesTwo extends StatefulWidget {
  @override
  _LoginQuestionsPagesTwo createState() => _LoginQuestionsPagesTwo();
}

class _LoginQuestionsPagesTwo extends State<LoginQuestionsPagesTwo> {
  String? selectedFilter;

  @override
  Widget build(BuildContext context) {
    Lang lang = Lang.of(context);
    return Background(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset('assets/images/logo.png',
                    width: 150.w, height: 200.h),
                Text(
                  lang.type,
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 50,
                    color: Colors.black87,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                QuestionsButton(
                  label: lang.male,
                  isSelected: selectedFilter == 'male',
                  onTap: () {
                    setState(() {
                      selectedFilter = 'male';
                    });
                  },
                ),
                const SizedBox(height: 25),
                QuestionsButton(
                  label: lang.female,
                  isSelected: selectedFilter == 'female',
                  onTap: () {
                    setState(() {
                      selectedFilter = 'female';
                    });
                  },
                ),
              ],
            ),
            Button(onPressed: () {}, text: lang.registration)
          ],
        ),
      ),
    );
  }
}
