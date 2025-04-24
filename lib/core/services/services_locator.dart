import 'package:educational_platform_app/core/network/api_call_handler.dart';
import 'package:educational_platform_app/core/utils/evaluations.dart';
import 'package:educational_platform_app/student/src/data/data_source/auth/auth_remote_data_source.dart';
import 'package:educational_platform_app/student/src/data/data_source/main/evaluation_remote_data_source.dart';
import 'package:educational_platform_app/student/src/data/data_source/main/main_remote_data_source.dart';
import 'package:educational_platform_app/student/src/data/repository/auth_repository.dart';
import 'package:educational_platform_app/student/src/data/repository/evaluation_repository.dart';
import 'package:educational_platform_app/student/src/data/repository/main_repository.dart';
import 'package:educational_platform_app/student/src/domain/repository/auth_repository.dart';
import 'package:educational_platform_app/student/src/domain/repository/evaluation_repository.dart';
import 'package:educational_platform_app/student/src/domain/repository/main_repository.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/Region/Region_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/TeacherFilter/teacher_filter_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/check_auth/check_auth_bloc.dart';

import 'package:educational_platform_app/student/src/presentation/controllers/course_details/course_details_bloc.dart';

import 'package:educational_platform_app/student/src/presentation/controllers/course_filter/course_filter_bloc.dart';

import 'package:educational_platform_app/student/src/presentation/controllers/courses/courses_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/favorite/favorite_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/get_courses_from_teacher/get_courses_from_teacher_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/my_courses/my_courses_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/select_video_cubit/select_video_cubit.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/teacher_alerte/teacher_alerte_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/offers_discount/offers_discount_bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    _authSl();
    _mainSl();
    _evaluationSl();
  }

  void _authSl() {
    sl.registerLazySingleton(() => CheckAuthBloc(sl()));
    sl.registerLazySingleton<BaseAuthRepository>(
        () => AuthRepository(baseAuthRemoteDataSource: sl()));
    sl.registerLazySingleton<BaseAuthRemoteDataSource>(
        () => AuthRemoteDataSource());

    sl.registerFactory(() => ApiCallHandler(
          authDataSource: sl(),
        ));
  }

  void _mainSl() {
    sl.registerLazySingleton(() => CoursesBloc(sl()));
    sl.registerLazySingleton(() => TeacherAlerteBloc(sl()));
    sl.registerLazySingleton(() => OffersDiscountBloc(sl()));
    sl.registerLazySingleton(() => RegionBloc(sl()));
    sl.registerLazySingleton(() => MyCoursesBloc(sl()));
    sl.registerFactory(() => SelectVideoCubit(repository: sl()));
    sl.registerFactory(() => CourseDetailsBloc(mainRepository: sl()));
    sl.registerLazySingleton(() => FavoriteBloc(sl()));

    sl.registerLazySingleton(() => GetCoursesFromTeacherBloc(sl()));

    sl.registerLazySingleton(() => TeacherFilterBloc(repository: sl()));
    sl.registerLazySingleton(() => CourseFilterBloc(repository: sl()));

    sl.registerLazySingleton<BaseMainRepository>(
        () => MainRepository(mainRemoteDataSource: sl()));
    sl.registerLazySingleton<BaseMainRemoteDataSource>(
        () => MainRemoteDataSource());
  }

  void _evaluationSl() {
    sl.registerFactory(() => EvaluationCubit(sl()));
    sl.registerLazySingleton<BaseEvaluationRepository>(
        () => EvaluationRepository(evaluationRemoteDataSource: sl()));
    sl.registerLazySingleton<BaseEvaluationRemoteDataSource>(
        () => EvaluationRemoteDataSource());
  }
}

class SingleInstanceService {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static BuildContext? get context => navigatorKey.currentContext;
}
