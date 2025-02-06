import 'package:educational_platform_app/core/utils/toast.dart';
import 'package:educational_platform_app/student/core/routes/routes_name.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/check_auth/check_auth_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppAuthChecker {
  AppAuthChecker();

  void listener(context, CheckAuthState state) {
    if (kDebugMode) {
      print(state.isAuth);
      print(state.loading);
      print(state.error);
      print(state.isEnpty);
      print("-----------");
    }
    if (state.error) {
      Toast().error(context, state.errorMessage);
      Navigator.pushNamedAndRemoveUntil(
        context,
        RoutesNames.lodingRoute,
        (route) => false,
      );
      return;
    }
    if (state.isAuth) {
      if (state.auth != null) {
        if (!state.isEnpty) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            RoutesNames.mainRoute,
            (route) => false,
          );
        }
      } else {
        Navigator.pushNamedAndRemoveUntil(
          context,
          RoutesNames.loginRoute,
          (route) => false,
        );
      }
    } else {
      if (state.loading) {
        Navigator.pushNamedAndRemoveUntil(
          context,
          RoutesNames.lodingRoute,
          (route) => false,
        );
      } else {
        if (!state.isEnpty) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            RoutesNames.loginRoute,
            (route) => false,
          );
        }
      }
    }
  }
}