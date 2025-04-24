import 'package:educational_platform_app/core/utils/toast.dart';
import 'package:educational_platform_app/core/routes/router_screens.dart';
import 'package:educational_platform_app/core/routes/routes_name.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/check_auth/check_auth_bloc.dart';
import 'package:flutter/foundation.dart';

class AppAuthChecker {
  AppAuthChecker();

  void listener(context, CheckAuthState state) {
    if (kDebugMode) {
      print('Auth State: ${state.isAuth}');
      print('Loading State: ${state.loading}');
      print('Error State: ${state.error}');
      print('Empty State: ${state.isEnpty}');
      print("-----------");
    }

    // First handle loading state
    if (state.loading && !state.isEnpty) {
      AppRouter.router
          .navigateTo(context, RoutesNames.lodingRoute, clearStack: true);
    }

    // Then handle error state
    if (state.error) {
      Toast().error(context, state.errorMessage);
      if (!state.isAuth) {
        AppRouter.router
            .navigateTo(context, RoutesNames.loginRoute, clearStack: true);
      }
    }

    // Handle authentication states
    if (state.isAuth && !state.isEnpty) {
      AppRouter.router
          .navigateTo(context, RoutesNames.mainRoute, replace: true);
    } else {
      // Only navigate to login if we're not in an empty state and not authenticated
      if (!state.isEnpty) {
        AppRouter.router
            .navigateTo(context, RoutesNames.loginRoute, clearStack: true);
      }
    }
  }
}
