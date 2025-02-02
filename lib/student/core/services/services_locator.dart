import 'package:educational_platform_app/student/src/data/data_source/auth/auth_remote_data_source.dart';
import 'package:educational_platform_app/student/src/data/repository/auth_repository.dart';
import 'package:educational_platform_app/student/src/domain/repository/auth_repository.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/check_auth/check_auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    _authSl();
  }

  void _authSl() {
    sl.registerLazySingleton(() => CheckAuthBloc(sl()));
    sl.registerLazySingleton<BaseAuthRepository>(
        () => AuthRepository(baseAuthRemoteDataSource: sl()));
    sl.registerLazySingleton<BaseAuthRemoteDataSource>(
        () => AuthRemoteDataSource());
  }
}

class SingleInstanceService {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static BuildContext? get context => navigatorKey.currentContext;
}
