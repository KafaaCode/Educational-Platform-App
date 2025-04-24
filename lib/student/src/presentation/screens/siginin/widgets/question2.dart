import 'package:educational_platform_app/core/localization/generated/l10n.dart';
import 'package:educational_platform_app/core/routes/routes_name.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/check_auth/check_auth_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/screens/siginin/widgets/page_line.dart';
import 'package:educational_platform_app/student/src/presentation/screens/siginin/widgets/questions_button.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Question2 extends StatelessWidget {
  Question2({super.key, required this.pageController, this.isUpdate = false});
  final PageController pageController;
  final bool isUpdate;

  @override
  Widget build(BuildContext context) {
    Lang lang = Lang.of(context);
    return BlocBuilder<CheckAuthBloc, CheckAuthState>(
      builder: (context, state) {
        return Column(
          children: [
            PageLine(
              pageIndex: 2,
              onTap: (value) {
                pageController.jumpToPage(value);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              _buildQuestionsButton(
                                  context: context,
                                  label: lang.male,
                                  gander: 'male',
                                  state: state),
                              const SizedBox(height: 25),
                              _buildQuestionsButton(
                                  context: context,
                                  label: lang.female,
                                  gander: 'female',
                                  state: state),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Button(
                              onPressed: () {
                                if (isUpdate) {
                                  context.read<CheckAuthBloc>().add(
                                      CheckAuthEvent.updateInfo(
                                          isSend: true, user: state.user));
                                } else {
                                  context.read<CheckAuthBloc>().add(
                                      CheckAuthEvent.resgiter(
                                          user: state.user));
                                }
                              },
                              text: !isUpdate
                                  ? lang.continueRegistration
                                  : "تحديث")
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
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
                        )
                      ],
                    )
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
    required String gander,
    required CheckAuthState state,
  }) {
    return QuestionsButton(
      label: label,
      isSelected: state.user.gander == gander,
      onTap: () {
        context.read<CheckAuthBloc>().add(CheckAuthEvent.updateInfo(
            user: state.user.copyWith(gander: gander)));
      },
    );
  }
}
