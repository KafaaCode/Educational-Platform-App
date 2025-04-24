import 'package:educational_platform_app/core/routes/routes_name.dart';
import 'package:educational_platform_app/student/src/data/models/models.dart';
import 'package:educational_platform_app/student/src/presentation/screens/404page.dart';
import 'package:educational_platform_app/student/src/presentation/screens/laoding_page.dart';
import 'package:educational_platform_app/student/src/presentation/screens/login/login_screen.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/main_ui_student.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/screens/course_filter.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/screens/course_informaiton.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/screens/courses_page.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/screens/offers_discount_page.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/screens/teacher_alerte_page.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/screens/teacher_detials.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/screens/techer_filter.dart';
import 'package:educational_platform_app/student/src/presentation/screens/settings/screens/favorite/favorite_page.dart';
import 'package:educational_platform_app/student/src/presentation/screens/settings/screens/profile.dart';
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
    RoutesNames.techerFilter,
    handler: Handler(
      handlerFunc: (context, parameters) {
        final args = context!.settings!.arguments;
        if (args is int) {
          return TecherFilter(
            specializationID: args,
          );
        } else {
          return NotFoundPage();
        }
      },
    ),
  );
  router.define(
    RoutesNames.CoursesFilter,
    handler: Handler(
      handlerFunc: (context, parameters) {
        final args = context!.settings!.arguments;
        if (args is String) {
          return CoursesFilterPage(
            courseType: args,
          );
        } else {
          return NotFoundPage();
        }
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
        return const MainUiScreen();
      },
    ),
  );
  router.define(
    RoutesNames.profileRoute,
    handler: Handler(
      handlerFunc: (context, parameters) {
        return Profile();
      },
    ),
  );
  router.define(
    RoutesNames.offersDiscountRoute,
    handler: Handler(
      handlerFunc: (context, parameters) {
        return const OffersDiscountPage();
      },
    ),
  );
  router.define(
    RoutesNames.favoritesRoute,
    handler: Handler(
      handlerFunc: (context, parameters) {
        return const FavoritePage();
      },
    ),
  );
  router.define(
    RoutesNames.lodingRoute,
    handler: Handler(
      handlerFunc: (context, parameters) {
        return const LoadingPage();
      },
    ),
  );
  router.define(
    RoutesNames.teachersRoute,
    handler: Handler(
      handlerFunc: (context, parameters) {
        return TeacherAlertePage();
      },
    ),
  );
  router.define(
    RoutesNames.coursesRoute,
    handler: Handler(
      handlerFunc: (context, parameters) {
        return const CoursesPage();
      },
    ),
  );
  router.define(
    RoutesNames.teacherDetailsRoute,
    handler: Handler(
      handlerFunc: (context, parameters) {
        final args = context!.settings!.arguments;
        if (args is Teacher) {
          return TeacherDetials(teacher: args);
        } else {
          return NotFoundPage();
        }
      },
    ),
  );
  router.define(
    RoutesNames.courseRoute,
    handler: Handler(
      handlerFunc: (context, parameters) {
        final args = context!.settings!.arguments;
        if (args is Course) {
          return CourseInformation(course: args);
        } else {
          return NotFoundPage();
        }
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

  //------------------------------------------------------------------
  //------------------------- teacher --------------------------------
  //------------------------------------------------------------------

  router.define(
    RoutesNames.teacherMainRoute,
    handler: Handler(
      handlerFunc: (context, parameters) {
        return const TeacherMainPage();
      },
    ),
  );
}
