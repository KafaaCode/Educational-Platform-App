import 'package:educational_platform_app/core/localization/generated/l10n.dart';
import 'package:educational_platform_app/src/presentation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Lang lang = Lang.of(context);
    return Container(
        child: Stack(children: [
      Positioned.fill(
        child: Opacity(
          opacity: 0.8,
          child: Image.asset(
            'assets/images/bg_intro_page1.png',
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Image.asset('assets/images/logo.png',
                  width: 150.w, height: 200.h)),
          SizedBox(height: 20.h),
          Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.6),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
                BoxShadow(
                  color: Colors.white.withOpacity(0.06),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: const Offset(0, -3),
                ),
              ],
            ),
            height: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  lang.tilteIntroPage1,
                  style: const TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  lang.textIntroPage1,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w100),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 80.h),
                Button(
                  onPressed: () {},
                  text: lang.btnIntroPage1,
                )
              ],
            ),
          )
        ],
      )
    ]));
  }
}
