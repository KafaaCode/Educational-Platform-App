import 'package:educational_platform_app/student/src/presentation/screens/siginin/widgets/question1.dart';
import 'package:educational_platform_app/student/src/presentation/screens/siginin/widgets/question2.dart';
import 'package:educational_platform_app/student/src/presentation/screens/siginin/widgets/sigin.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SiginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        leading: const BackButton(
          // Icons.arrow_back_rounded,
          color: Colors.white,
        ),
        appBarHeight: 240,
        showLogo: true,
        appBarContent: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    width: 150.w,
                    color: Colors.white,
                    'assets/images/kubaa.png',
                    fit: BoxFit.contain,
                  ),
                  Text(
                    "مرحباً بك في عالم \nجديد من التعلم!",
                    softWrap: true,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 20.sp,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "أنشاء حساب",
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 20.sp,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5), // المسافة تحت النص
                    height: 3,
                    width: 60.w,
                    color: const Color.fromRGBO(223, 181, 71, 1),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: PageView(
          children: const [
            Question2(),
            Question1(),
            SignInScreen(),
          ],
        ));
  }
}
