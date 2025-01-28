import 'package:educational_platform_app/student/core/routes/routes_name.dart';
import 'package:educational_platform_app/student/src/presentation/screens/404page.dart';
import 'package:educational_platform_app/student/src/presentation/screens/login/login_questions_pages.dart';
import 'package:educational_platform_app/student/src/presentation/screens/login/login_screen.dart';

import 'package:fluro/fluro.dart';

void configureRoutes(FluroRouter router) {
  router.define(
    RoutesNames.chechAuthRoute,
    handler: Handler(
      handlerFunc: (context, parameters) {
        return LoginScreen();
      },
    ),
  );

  router.define(
    RoutesNames.notFoundRoute,
    handler: Handler(
      handlerFunc: (context, parameters) {
        return NotFoundPage();
      },
    ),
  );
}
