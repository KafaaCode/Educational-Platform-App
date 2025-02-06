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
  final bool isPassValid;
  const SignInScreen(
      {super.key,
      required this.pageController,
      required this.state,
      this.isPassValid = true});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController phoneNumberController;
  String? selectedValue;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    print(widget.state.user);
    nameController = TextEditingController(text: widget.state.user.name);
    emailController = TextEditingController(text: widget.state.user.email);
    phoneNumberController =
        TextEditingController(text: widget.state.user.phoneNumber);
    passwordController = TextEditingController(text: '');
    // Initialize selectedValue only if it matches an existing region
    selectedValue = widget.state.regions
                ?.any((r) => r.id.toString() == widget.state.user.region) ==
            true
        ? widget.state.user.region
        : null;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // print((selectedValue != null || widget.state.regions!.isEmpty));
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            PageLine(
              pageIndex: 0,
              onTap: (value) => widget.pageController.jumpToPage(value),
            ),
            const SizedBox(height: 20),
            Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextInputField(
                    controller: nameController,
                    labeltext: "الاسم الكامل",
                    icon: Icons.person,
                    validator: AppValidators.validateFirstName,
                  ),
                  const SizedBox(height: 20),
                  TextInputField(
                    controller: emailController,
                    labeltext: "البريد الألكتروني",
                    icon: Icons.email_rounded,
                    validator: AppValidators.emailValidation,
                  ),
                  const SizedBox(height: 20),
                  TextInputField(
                    controller: phoneNumberController,
                    labeltext: "رقم الهاتف",
                    icon: Icons.phone,
                    validator: AppValidators.validatePhone,
                  ),
                  const SizedBox(height: 20),
                  TextInputField(
                    icon: Icons.lock,
                    labeltext: "كلمة المرور",
                    isPassword: true,
                    controller: passwordController,
                    validator: widget.isPassValid
                        ? AppValidators.passwordValidation
                        : null,
                  ),
                  const SizedBox(height: 20),
                  widget.state.regions != null &&
                          widget.state.regions!.isNotEmpty
                      ? DropdownFieldWidget(
                          labelText: 'بلد الاقامة',
                          icon: Icons.flag_rounded,
                          items: widget.state.regions!,
                          value: selectedValue,
                          onChanged: (newValue) {
                            setState(() {
                              selectedValue = newValue;
                            });
                          },
                        )
                      : _loadTheRegion(context),
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

                        final updatedUser = widget.state.user.copyWith(
                          name: nameController.text,
                          email: emailController.text,
                          password: passwordController.text,
                          phoneNumber: phoneNumberController.text,
                          region: selectedValue,
                        );

                        BlocProvider.of<CheckAuthBloc>(context).add(
                          CheckAuthEvent.updateInfo(user: updatedUser),
                        );
                        widget.pageController.jumpToPage(1);
                      }
                    },
                    text: 'استمر',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
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
            ),
          ],
        ),
      ),
    );
  }

  Widget _loadTheRegion(BuildContext context) {
    context.read<CheckAuthBloc>().add(CheckAuthEvent.started());
    return Container();
  }
}
