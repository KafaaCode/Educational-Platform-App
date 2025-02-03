import 'package:educational_platform_app/student/src/presentation/screens/settings/widgets/appbar_account.dart';
import 'package:educational_platform_app/student/src/presentation/screens/settings/widgets/body_settings.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: BodySettings(),
              ),
              Positioned(
                top: -100,
                left: 0,
                right: 0,
                child: AppbarAccount(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
