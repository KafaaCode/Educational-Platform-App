import 'package:educational_platform_app/core/localization/generated/l10n.dart';
import 'package:educational_platform_app/student/src/presentation/screens/siginin/widgets/page_line.dart';
import 'package:educational_platform_app/student/src/presentation/screens/siginin/widgets/questions_button.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Question2 extends StatefulWidget {
  const Question2({super.key});

  @override
  State<Question2> createState() => _Question1State();
}

class _Question1State extends State<Question2> {
  String? selectedFilter;
  @override
  Widget build(BuildContext context) {
    Lang lang = Lang.of(context);
    return Column(
      children: [
        const PageLine(pageIndex: 2),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
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
              const SizedBox(
                height: 40,
              ),
              Button(onPressed: () {}, text: lang.continueRegistration)
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("لديك حساب؟"),
              InkWell(
                onTap: () {
                  print("stooop");
                },
                child: const Text(
                  'سجل دخول الان',
                  style: TextStyle(color: Color.fromRGBO(88, 135, 96, 1)),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
