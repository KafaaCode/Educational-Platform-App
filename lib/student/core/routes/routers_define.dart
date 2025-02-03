import 'package:educational_platform_app/student/core/routes/routes_name.dart';
import 'package:educational_platform_app/student/src/presentation/screens/404page.dart';
import 'package:educational_platform_app/student/src/presentation/screens/laoding_page.dart';
import 'package:educational_platform_app/student/src/presentation/screens/login/login_screen.dart';

import 'package:educational_platform_app/student/src/presentation/screens/siginin/sigin_screen.dart';
import 'package:educational_platform_app/teacher/src/presentation/screens/main/main_page.dart';


import 'package:fluro/fluro.dart';

void configureRoutes(FluroRouter router) {
  router.define(
    RoutesNames.chechAuthRoute,
    handler: Handler(
      handlerFunc: (context, parameters) {
        return const LoadingPage();
      },
    ),
  );
  router.define(
    RoutesNames.registerRoute,
    handler: Handler(
      handlerFunc: (context, parameters) {
        return SiginScreen();
      },
    ),
  );
  router.define(
    RoutesNames.loginRoute,
    handler: Handler(
      handlerFunc: (context, parameters) {
        return LoginScreen();
      },
    ),
  );
  router.define(
    RoutesNames.mainRoute,
    handler: Handler(
      handlerFunc: (context, parameters) {
        return const MainPage();
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
