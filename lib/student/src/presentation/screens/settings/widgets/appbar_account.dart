import 'package:educational_platform_app/core/routes/router_screens.dart';
import 'package:educational_platform_app/core/routes/routes_name.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/check_auth/check_auth_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/screens/settings/widgets/profile_picture_editor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppbarAccount extends StatelessWidget {
  const AppbarAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -70,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.all(0),
        width: 336.w,
        height: 100.h,
        margin: const EdgeInsets.fromLTRB(10, 80, 10, 10),
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).shadowColor.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
            borderRadius: const BorderRadius.all(Radius.circular(16))),
        child: BlocConsumer<CheckAuthBloc, CheckAuthState>(
          listener: (context, state) {
            print(state.isAuth);
            if (state.isAuth == false) {
              AppRouter.router
                  .navigateTo(context, RoutesNames.loginRoute, replace: true);
            }
          },
          builder: (context, state) {
            ThemeData theme = Theme.of(context);
            return ListTile(
              leading: SizedBox(
                  width: 60.w,
                  height: 60.h,
                  child: ProfilePictureEditor(
                    isEditable: false,
                    size: 65,
                    initialImageUrl:
                        state.user.image ?? state.auth?.student?.imagePath,
                  )),
              title: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0))),
                    height: 50,
                    width: 3,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        state.user.name,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color:
                                Theme.of(context).textTheme.bodyLarge?.color),
                      ),
                      Text(
                        state.user.email,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color:
                                Theme.of(context).textTheme.bodyMedium?.color),
                      ),
                    ],
                  ),
                ],
              ),
              trailing: Icon(
                Icons.keyboard_arrow_left_rounded,
                size: 18.sp,
                color: theme.iconTheme.color,
              ),
              onTap: () {
                AppRouter.router.navigateTo(context, RoutesNames.profileRoute);
              },
            );
          },
        ),
      ),
    );
  }
}
