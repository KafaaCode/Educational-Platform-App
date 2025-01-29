import 'package:educational_platform_app/core/localization/generated/l10n.dart';
import 'package:educational_platform_app/student/src/data/models/user.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/check_auth/check_auth_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/screens/siginin/widgets/page_line.dart';
import 'package:educational_platform_app/student/src/presentation/screens/siginin/widgets/questions_button.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Question1 extends StatefulWidget {
  final PageController pageController;
  final CheckAuthState state;
  const Question1(
      {super.key, required this.pageController, required this.state});
  @override
  State<Question1> createState() => _Question1State();
}

class _Question1State extends State<Question1> {
  String? selectedFilter;

  @override
  void initState() {
    selectedFilter ??= widget.state.user?.academicStage['stage'] ?? 'basic';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    selectedFilter ??= widget.state.user?.academicStage['stage'] ?? 'basic';
    Lang lang = Lang.of(context);
    return Column(
      children: [
        PageLine(
          pageIndex: 1,
          onTap: (value) {
            widget.pageController.jumpToPage(value);
          },
        ),
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
                    label: lang.basic,
                    isSelected: selectedFilter == 'basic',
                    onTap: () {
                      setState(() {
                        selectedFilter = 'basic';
                        context.read<CheckAuthBloc>().add(
                                CheckAuthEvent.updateInfo(
                                    user: widget.state.user.copyWith(
                                        academicStage: {
                                  'stage': selectedFilter!
                                })));
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
                        context.read<CheckAuthBloc>().add(
                                CheckAuthEvent.updateInfo(
                                    user: widget.state.user.copyWith(
                                        academicStage: {
                                  'stage': selectedFilter!
                                })));
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Button(
                  onPressed: () {
                    widget.pageController.jumpToPage(2);
                  },
                  text: lang.continueRegistration)
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
