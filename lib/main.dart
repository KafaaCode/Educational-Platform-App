import 'package:educational_platform_app/core/localization/generated/l10n.dart';
import 'package:educational_platform_app/core/localization/language/language_cubit.dart';
import 'package:educational_platform_app/core/observer/app_observer.dart';
import 'package:educational_platform_app/core/routes/router_screens.dart';
import 'package:educational_platform_app/core/routes/routers_define.dart';
import 'package:educational_platform_app/core/routes/routes_name.dart';
import 'package:educational_platform_app/core/services/services_locator.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/check_auth/check_auth_bloc.dart';
import 'package:educational_platform_app/student/src/theme/theme.dart';
import 'package:educational_platform_app/student/src/theme/theme_cubit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  // setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorageDirectory.web
        : HydratedStorageDirectory((await getTemporaryDirectory()).path),
  );
  Bloc.observer = AppBlocObserver();
  ServicesLocator().init();
  configureRoutes(AppRouter.router);
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({
    super.key,
  });

  @override
  State<MainApp> createState() => _MainApp();
}

class _MainApp extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => LanguageCubit(),
                lazy: false,
              ),
              BlocProvider(create: (context) => ThemesCubit()),
              BlocProvider(create: (context) => CheckAuthBloc(sl()))
            ],
            child: BlocBuilder<ThemesCubit, ThemeMode>(
              builder: (context, state) {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  localizationsDelegates: const [
                    Lang.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  locale: const Locale('ar'),
                  supportedLocales: Lang.delegate.supportedLocales,
                  theme: lightTheme,
                  darkTheme: darkTheme,
                  themeMode: state,
                  onGenerateTitle: (BuildContext context) => "App",
                  initialRoute: RoutesNames.chechAuthRoute,
                  onGenerateRoute: AppRouter.router.generator,
                  navigatorKey: SingleInstanceService.navigatorKey,
                );
              },
            ),
          );
        });
  }
}
