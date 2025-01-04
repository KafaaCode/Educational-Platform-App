import 'package:educational_platform_app/core/routes/routes_name.dart';
import 'package:educational_platform_app/src/presentation/screens/404page.dart';
import 'package:educational_platform_app/src/presentation/screens/main/main_page.dart';
import 'package:fluro/fluro.dart';

void configureRoutes(FluroRouter router) {
  router.define(
    RoutesNames.chechAuthRoute,
    handler: Handler(
      handlerFunc: (context, parameters) {
        return MainPage();
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
