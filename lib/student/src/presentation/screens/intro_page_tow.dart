import 'package:educational_platform_app/student/core/localization/generated/l10n.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/background.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroPageTow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Lang lang = Lang.of(context);
    return Background(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/logo.png',
              width: 150.w, height: 200.h, fit: BoxFit.fitWidth),
          SizedBox(
            height: 25.h,
          ),
          Button(
              onPressed: () {},
              text: lang.createAccount,
              type: ButtonType.worng),
          SizedBox(
            height: 10.h,
          ),
          Button(
              onPressed: () {},
              text: lang.loginAStudent,
              type: ButtonType.nomal),
          SizedBox(
            height: 10.h,
          ),
          Button(
              onPressed: () {}, text: lang.loginTeacher, type: ButtonType.red),
        ],
      ),
    ));
  }
}
