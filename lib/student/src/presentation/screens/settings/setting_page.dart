import 'package:educational_platform_app/student/core/observer/app_auth_checker.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/check_auth/check_auth_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/screens/settings/widgets/body_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<CheckAuthBloc, CheckAuthState>(
        // listenWhen: (previous, current) => previous != current,
        listener: AppAuthChecker().listener,
        child: const BodySettings());
  }
}
