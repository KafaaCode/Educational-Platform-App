import 'package:educational_platform_app/student/core/routes/routes_name.dart';
import 'package:educational_platform_app/student/core/validations/app_validations.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/check_auth/check_auth_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/screens/siginin/widgets/page_line.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/Text_field_widget.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/button.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/dropdown_Field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInScreen extends StatefulWidget {
  final PageController pageController;
  final CheckAuthState state;
  const SignInScreen(
      {super.key, required this.pageController, required this.state});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  String? selectedValue;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    nameController = TextEditingController(text: widget.state.user.name);
    emailController = TextEditingController(text: widget.state.user.email);
    passwordController = TextEditingController(text: '');
    selectedValue =
        widget.state.user.region.isEmpty ? null : widget.state.user.region;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          PageLine(
            pageIndex: 0,
            onTap: (value) {
              widget.pageController.jumpToPage(value);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 5,
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextInputField(
                      controller: nameController,
                      labeltext: "الاسم الكامل",
                      icon: Icons.person,
                      validator: AppValidators.validateFirstName),
                  const SizedBox(
                    height: 20,
                  ),
                  TextInputField(
                    controller: emailController,
                    labeltext: "البريد الألكتروني",
                    icon: Icons.email_rounded,
                    validator: AppValidators.emailValidation,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextInputField(
                    icon: Icons.lock,
                    labeltext: "كلمة المرور",
                    isPassword: true,
                    controller: passwordController,
                    validator: AppValidators.passwordValidation,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  DropdownFieldWidget(
                    labelText: 'بلد الاقامة',
                    icon: Icons.flag_rounded,
                    items: const ['اعزاز', 'الباب', 'جرابلس'],
                    value: selectedValue,
                    onChanged: (newValue) {
                      setState(() {
                        selectedValue = newValue!;
                      });
                    },
                  ),
                  Button(
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        if (selectedValue == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('الرجاء اختيار بلد الاقامة')),
                          );
                          return;
                        }
                        BlocProvider.of<CheckAuthBloc>(context).add(
                            CheckAuthEvent.updateInfo(
                                user: widget.state.user.copyWith(
                                    name: nameController.text,
                                    email: emailController.text,
                                    password: passwordController.text,
                                    region: selectedValue!)));
                        widget.pageController.jumpToPage(1);
                      }
                    },
                    text: 'استمر',
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("لديك حساب؟"),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(RoutesNames.loginRoute);
                  },
                  child: const Text(
                    'سجل دخول الان',
                    style: TextStyle(color: Color.fromRGBO(88, 135, 96, 1)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
