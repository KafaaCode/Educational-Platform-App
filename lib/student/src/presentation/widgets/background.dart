import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Background extends StatelessWidget {
  final Widget child;
  final double toolbarHeight;
  const Background({super.key, required this.child, this.toolbarHeight = 300});
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    ScreenUtil.init(context,
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true);
    return Container(
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor, // استخدام لون الخلفية من الثيم
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: toolbarHeight.h,
          elevation: 10,
          shadowColor: Colors.black.withOpacity(0.5),
          flexibleSpace: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20.r)),
                color: theme.primaryColor, // استخدام اللون الأساسي من الثيم
              ),
              height: toolbarHeight.h,
              alignment: Alignment.center,
              child: const SizedBox()),
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: 1,
                child: Image.asset(
                  'assets/images/bg_things.png',
                  fit: BoxFit.cover,
                  color: theme.brightness == Brightness.dark
                      ? Colors.black.withOpacity(0.2)
                      : null, // تعديل اللون بناءً على الثيم
                  colorBlendMode: theme.brightness == Brightness.dark
                      ? BlendMode.darken
                      : null,
                ),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
