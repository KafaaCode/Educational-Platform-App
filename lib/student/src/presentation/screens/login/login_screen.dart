import 'package:educational_platform_app/student/src/presentation/widgets/Text_field_widget.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/app_scaffold.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
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
                  "تسجيل دخول",
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
      body: Container(
        alignment: Alignment.center,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 120,
            ),
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  TextInputField(
                    controller: TextEditingController(text: ""),
                    labeltext: "البريد الألكتروني",
                    icon: Icons.email_rounded,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextInputField(
                    icon: Icons.lock,
                    labeltext: "كلمة المرور",
                    isPassword: true,
                    controller: TextEditingController(text: ""),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Button(
                    onPressed: () {},
                    text: 'تسجيل دخول',
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("ليس لديك حساب؟"),
                  InkWell(
                    onTap: () {
                      print("stooop");
                    },
                    child: const Text(
                      'اشترك الان',
                      style: TextStyle(color: Color.fromRGBO(88, 135, 96, 1)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
