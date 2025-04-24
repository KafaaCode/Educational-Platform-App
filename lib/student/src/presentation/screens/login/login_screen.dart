import 'package:educational_platform_app/core/routes/routes_name.dart';
import 'package:educational_platform_app/core/validations/app_validations.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/check_auth/check_auth_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/Text_field_widget.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/app_scaffold.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  LoginScreen({super.key});
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
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: SizedBox(
            height: MediaQuery.of(context).size.height -
                240 -
                50, // Adjust the subtraction based on your AppBarHeight and other fixed elements
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextInputField(
                        controller: emailController,
                        labeltext: "البريد الألكتروني",
                        icon: Icons.email_rounded,
                        initialValue: emailController.text,
                        validator: AppValidators.emailValidation,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextInputField(
                        icon: Icons.lock,
                        initialValue: passController.text,
                        labeltext: "كلمة المرور",
                        isPassword: true,
                        controller: passController,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Button(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context.read<CheckAuthBloc>().add(
                                CheckAuthEvent.login(
                                    email: emailController.text,
                                    password: passController.text));
                          } else {
                            return;
                          }
                        },
                        text: 'تسجيل دخول',
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("ليس لديك حساب؟"),
                    InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(RoutesNames.registerRoute);
                      },
                      child: const Text(
                        'اشترك الان',
                        style: TextStyle(color: Color.fromRGBO(88, 135, 96, 1)),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
