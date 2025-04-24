import 'package:educational_platform_app/core/utils/toast.dart';
import 'package:educational_platform_app/core/routes/router_screens.dart';
import 'package:educational_platform_app/core/routes/routes_name.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/check_auth/check_auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../theme/theme.dart';

class AppScaffold extends StatelessWidget {
  final Widget body;
  final Widget? appBarContent;
  final Widget? leading;
  final double appBarHeight;
  final bool showLogo;

  const AppScaffold({
    super.key,
    required this.body,
    this.appBarContent,
    this.leading,
    this.appBarHeight = 300,
    this.showLogo = false,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<CheckAuthBloc, CheckAuthState>(
        listenWhen: (previous, current) {
          print("------------------login----------------------");
          return previous != current;
        },
        listener: (context, state) {
          if (state.isAuth && !state.loading) {
            AppRouter.router
                .navigateTo(context, RoutesNames.mainRoute, clearStack: true);
          }
          if (state.error) {
            Toast().error(context, state.errorMessage);
          }
        },
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.backgroundColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Scaffold(
            appBar: AppBar(
              leading: Container(
                width: 100,
                padding: const EdgeInsets.all(15.0),
                child: leading,
                alignment: Alignment.topRight,
              ),
              toolbarHeight: appBarHeight.h,
              flexibleSpace: SizedBox(
                height: appBarHeight.h,
                child: Stack(
                  children: [
                    // Top points background
                    Positioned.fill(
                      child: Image.asset(
                        'assets/images/bg_top_points.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    // Bottom points background
                    Positioned.fill(
                      top: 120,
                      bottom: 0,
                      child: Image.asset(
                        'assets/images/bg_buttom_points.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    // AppBar content
                    if (appBarContent != null)
                      Padding(
                        padding: EdgeInsets.all(20.0.sp),
                        child: appBarContent!,
                      ),
                  ],
                ),
              ),
            ),
            body: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  'assets/images/bg_things.png',
                  fit: BoxFit.cover,
                ),
                body,
              ],
            ),
          ),
        ));
  }
}
