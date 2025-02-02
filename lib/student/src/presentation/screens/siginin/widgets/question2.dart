import 'package:educational_platform_app/core/localization/generated/l10n.dart';
import 'package:educational_platform_app/student/core/routes/routes_name.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/check_auth/check_auth_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/screens/siginin/widgets/page_line.dart';
import 'package:educational_platform_app/student/src/presentation/screens/siginin/widgets/questions_button.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Question2 extends StatefulWidget {
  const Question2(
      {super.key, required this.pageController, required this.state});
  final PageController pageController;
  final CheckAuthState state;
  @override
  State<Question2> createState() => _Question1State();
}

class _Question1State extends State<Question2> {
  String? selectedFilter;

  @override
  void initState() {
    selectedFilter ??= widget.state.user.gander;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    selectedFilter ??= widget.state.user.gander;
    Lang lang = Lang.of(context);
    return Column(
      children: [
        PageLine(
          pageIndex: 2,
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
                    label: lang.male,
                    isSelected: selectedFilter == 'male',
                    onTap: () {
                      setState(() {
                        selectedFilter = 'male';
                        context.read<CheckAuthBloc>().add(
                            CheckAuthEvent.updateInfo(
                                user: widget.state.user
                                    .copyWith(gander: selectedFilter!)));
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
                        context.read<CheckAuthBloc>().add(
                            CheckAuthEvent.updateInfo(
                                user: widget.state.user
                                    .copyWith(gander: selectedFilter!)));
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
                    context
                        .read<CheckAuthBloc>()
                        .add(CheckAuthEvent.resgiter(user: widget.state.user));
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
                  Navigator.of(context).pushNamed(RoutesNames.loginRoute);
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
