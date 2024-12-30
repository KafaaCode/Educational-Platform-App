import 'package:educational_platform_app/core/localization/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:lottie/lottie.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Lang lang = Lang.of(context);
    return Scaffold(body: _loaingWidget(lang)
        // BlocConsumer<CheckAuthBloc, AuthState>(
        //     listenWhen: (previous, current) => previous.isAuth != current.isAuth,
        //     listener: (context, state) {
        //       if (state.isAuth) {
        //         AppRouter.router.navigateTo(
        //           context,
        //           RoutesNames.searchRoute,
        //           clearStack: false,
        //         );
        //       } else {
        //         AppRouter.router.navigateTo(
        //           context,
        //           RoutesNames.notFoundRoute,
        //           clearStack: true,
        //         );
        //       }
        //     },
        //     buildWhen: (previous, current) => previous.loading != current.loading,
        //     builder: (context, state) {
        //       return state.loading ? _loaingWidget(lang) : Container();
        //     }),
        );
  }

  Widget _loaingWidget(lang) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Lottie Loading Animation
          Lottie.asset(
            'assets/lottie/loading.json',
            width: 150.w, // Responsive width
            height: 200.h, // Responsive height
            fit: BoxFit.fitWidth,
          ),
          SizedBox(height: 20.h), // Responsive spacing
          // Loading Text
          Text(
            lang.loding,
            style: TextStyle(
              fontSize: 18.sp, // Responsive font size
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
