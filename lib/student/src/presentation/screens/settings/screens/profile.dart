import 'package:educational_platform_app/student/src/presentation/controllers/check_auth/check_auth_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/screens/siginin/widgets/question1.dart';
import 'package:educational_platform_app/student/src/presentation/screens/siginin/widgets/question2.dart';
import 'package:educational_platform_app/student/src/presentation/screens/siginin/widgets/sigin.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Profile extends StatelessWidget {
  Profile({super.key});
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    // CheckAuthState data = sl.get<CheckAuthBloc>().state;

    return AppScaffold(
        leading: const BackButton(
          // Icons.arrow_back_rounded,
          color: Colors.white,
        ),
        appBarHeight: 60,
        showLogo: true,
        appBarContent: Container(),
        body: BlocBuilder<CheckAuthBloc, CheckAuthState>(
          // bloc: context.read<CheckAuthBloc>()
          //   ..add(CheckAuthEvent.updateInfo(user: user)),
          builder: (context, state) {
            // print(state.auth!.user);
            return PageView(
              controller: pageController,
              children: [
                SignInScreen(
                    isPassValid: false,
                    pageController: pageController,
                    state: state),
                Question1(pageController: pageController, state: state),
                Question2(
                    pageController: pageController,
                    state: state,
                    isUpdate: true),
              ],
            );
          },
        ));
  }
}
