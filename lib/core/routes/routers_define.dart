import 'package:educational_platform_app/core/routes/routes_name.dart';
import 'package:educational_platform_app/src/presentation/screens/404page.dart';
import 'package:educational_platform_app/src/presentation/screens/intro_page.dart';
import 'package:educational_platform_app/src/presentation/screens/laoding_page.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';

void configureRoutes(FluroRouter router) {
  router.define(
    RoutesNames.chechAuthRoute,
    handler: Handler(
      handlerFunc: (context, parameters) {
        return IntroPage();
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
