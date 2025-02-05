import 'package:educational_platform_app/core/localization/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Lang lang = Lang.of(context);
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/images/bg_things.png',
          fit: BoxFit.fill,
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png',
                  width: 150.w, height: 200.h, fit: BoxFit.fitWidth),
              Lottie.asset(
                'assets/lottie/loading.json',
                width: 150.w,
                height: 50.h,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ],
    );
  }
}
