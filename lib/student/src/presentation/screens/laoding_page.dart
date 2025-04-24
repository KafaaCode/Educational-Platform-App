import 'package:educational_platform_app/core/utils/toast.dart';
import 'package:educational_platform_app/core/routes/router_screens.dart';
import 'package:educational_platform_app/core/routes/routes_name.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/check_auth/check_auth_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Lang lang = Lang.of(context);
    return BlocListener<CheckAuthBloc, CheckAuthState>(
        bloc: context.read<CheckAuthBloc>()
          ..add(const CheckAuthEvent.started()),
        listener: (context, CheckAuthState state) {
          Future.delayed(const Duration(seconds: 2), () {
            if (kDebugMode) {
              print('Auth State: ${state.isAuth}');
              print('Loading State: ${state.loading}');
              print('Error State: ${state.error}');
              print('Empty State: ${state.isEnpty}');
              print("-----------");
            }
            if (state.error) {
              Toast().error(context, state.errorMessage);
              if (!state.isAuth) {
                AppRouter.router
                    .navigateTo(context, RoutesNames.loginRoute, replace: true);
              }
            }
            if (state.isAuth && !state.isEnpty) {
              if (state.auth?.user.role == 'student') {
                AppRouter.router
                    .navigateTo(context, RoutesNames.mainRoute, replace: true);
              } else if (state.auth?.user.role == 'teacher') {
                AppRouter.router.navigateTo(
                    context, RoutesNames.teacherMainRoute,
                    replace: true);
              } else {
                AppRouter.router
                    .navigateTo(context, RoutesNames.loginRoute, replace: true);
              }
            } else {
              if (!state.isEnpty) {
                AppRouter.router
                    .navigateTo(context, RoutesNames.loginRoute, replace: true);
              }
            }
          });
        },
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/bg_things.png',
              fit: BoxFit.fill,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png',
                      width: 150.w, height: 200.h, fit: BoxFit.fitWidth),
                  Lottie.asset(
                    'assets/lottie/loading.json',
                    width: 150.w,
                    height: 50.h,
                    fit: BoxFit.fitWidth,
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ],
        ));
  }
}
