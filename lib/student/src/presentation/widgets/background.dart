import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Background extends StatelessWidget {
  final Widget child;
  final double toolbarHeight;
  const Background({super.key, required this.child, this.toolbarHeight = 300});
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true);
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFFF9E9), // Light beige background
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
                color: const Color.fromRGBO(88, 135, 96, 1),
              ),
              height: toolbarHeight.h,
              alignment: Alignment.center,
              child: SizedBox()),
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: 1,
                child: Image.asset(
                  'assets/images/bg_things.png',
                  fit: BoxFit.cover,
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
