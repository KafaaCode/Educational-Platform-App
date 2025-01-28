import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppbarBackground extends StatelessWidget {
  final Widget child;

  const AppbarBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Opacity(
            opacity: 1,
            child: Image.asset(
              'assets/images/bg_top_points.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned.fill(
          child: Opacity(
            opacity: 1,
            child: Image.asset(
              'assets/images/bg_buttom_points.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        child,
      ],
    );
  }
}
