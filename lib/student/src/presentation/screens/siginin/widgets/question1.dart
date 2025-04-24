import 'package:educational_platform_app/core/localization/generated/l10n.dart';
import 'package:educational_platform_app/core/routes/routes_name.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/check_auth/check_auth_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/screens/siginin/widgets/page_line.dart';
import 'package:educational_platform_app/student/src/presentation/screens/siginin/widgets/questions_button.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Question1 extends StatelessWidget {
  final PageController pageController;
  final bool isUpdate;
  Question1({super.key, required this.pageController, required this.isUpdate});

  @override
  Widget build(BuildContext context) {
    Lang lang = Lang.of(context);
    return BlocBuilder<CheckAuthBloc, CheckAuthState>(
      builder: (context, state) {
        return Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                reverse: true,
                child: Column(
                  children: [
                    PageLine(
                      pageIndex: 1,
                      onTap: (value) {
                        pageController.jumpToPage(value);
                      },
                    ),
                    const SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            _buildQuestionsButton(
                              context: context,
                              label: lang.basic,
                              stage: 'primary',
                              state: state,
                            ),
                            const SizedBox(height: 25),
                            _buildQuestionsButton(
                              context: context,
                              label: 'اعدادي',
                              stage: 'preparatory',
                              state: state,
                            ),
                            const SizedBox(height: 25),
                            _buildQuestionsButton(
                              context: context,
                              label: lang.highSchool,
                              stage: 'secondary',
                              state: state,
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),
                        Button(
                          onPressed: () {
                            if (state.user.academic_stage?['stage'] != null) {
                              pageController.jumpToPage(2);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('الرجاء اختيار')),
                              );
                            }
                          },
                          text: "استمر",
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
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
                    const SizedBox(height: 20),
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
    required String stage,
    required CheckAuthState state,
  }) {
    return QuestionsButton(
      label: label,
      isSelected: state.user.academic_stage?['stage'] == stage,
      onTap: () {
        context.read<CheckAuthBloc>().add(
              CheckAuthEvent.updateInfo(
                isSend: isUpdate,
                user: state.user.copyWith(
                  academic_stage: {
                    'stage': stage,
                    'type': state.user.academic_stage?['type'] ?? ''
                  },
                ),
              ),
            );
      },
    );
  }
}
