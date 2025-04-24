import 'package:educational_platform_app/core/routes/routes_name.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/check_auth/check_auth_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/screens/siginin/widgets/page_line.dart';
import 'package:educational_platform_app/student/src/presentation/screens/siginin/widgets/questions_button.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionType extends StatelessWidget {
  final PageController pageController;
  final bool isUpdate;
  const QuestionType(
      {super.key, required this.pageController, required this.isUpdate});

  @override
  Widget build(BuildContext context) {
    // Lang lang = Lang.of(context);
    return BlocBuilder<CheckAuthBloc, CheckAuthState>(
      builder: (context, state) {
        if (state.user.academic_stage?['stage'] != 'secondary') {
          pageController.nextPage(
              duration: const Duration(milliseconds: 10), curve: Curves.easeIn);
        }
        return Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        PageLine(
                          pageIndex: 1,
                          onTap: (value) {
                            pageController.jumpToPage(value);
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        _buildQuestionsButton(
                            context: context,
                            label: 'علمي',
                            type: 'scientific',
                            state: state),
                        const SizedBox(height: 25),
                        _buildQuestionsButton(
                            context: context,
                            label: "ادبي",
                            type: 'literary',
                            state: state),
                        const SizedBox(height: 25),
                        _buildQuestionsButton(
                            context: context,
                            label: 'عام',
                            type: 'General',
                            state: state),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Button(
                        onPressed: () {
                          pageController.jumpToPage(3);
                        },
                        text: "استمر"),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("لديك حساب؟"),
                        InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(RoutesNames.loginRoute);
                          },
                          child: const Text(
                            'سجل دخول الان',
                            style: TextStyle(
                                color: Color.fromRGBO(88, 135, 96, 1)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildQuestionsButton({
    required BuildContext context,
    required String label,
    required String type,
    required CheckAuthState state,
  }) {
    return QuestionsButton(
      label: label,
      isSelected: state.user.academic_stage?['type'] == type,
      onTap: () {
        context.read<CheckAuthBloc>().add(
              CheckAuthEvent.updateInfo(
                isSend: isUpdate,
                user: state.user.copyWith(
                  academic_stage: {
                    'stage': state.user.academic_stage?['stage'] ?? 'secondary',
                    'type': type,
                  },
                ),
              ),
            );
      },
    );
  }
}
