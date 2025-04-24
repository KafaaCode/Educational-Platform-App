import 'package:educational_platform_app/core/routes/router_screens.dart';
import 'package:educational_platform_app/core/routes/routes_name.dart';
import 'package:educational_platform_app/core/services/services_locator.dart';
import 'package:educational_platform_app/core/validations/app_validations.dart';
import 'package:educational_platform_app/student/src/data/models/models.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/Region/Region_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/check_auth/check_auth_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/screens/siginin/widgets/page_line.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/Text_field_widget.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/button.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/dropdown_Field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();

  final PageController pageController;
  String? selectedRegion;
  SignInScreen({super.key, required this.pageController});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            PageLine(
              pageIndex: 0,
              onTap: (value) => pageController.jumpToPage(value),
            ),
            const SizedBox(height: 20),
            BlocBuilder<CheckAuthBloc, CheckAuthState>(
              builder: (context, state) {
                if (state.user.name != null) {
                  nameController.text = state.user.name;
                }
                if (state.user.email != null) {
                  emailController.text = state.user.email;
                }
                if (state.user.phoneNumber != null) {
                  phoneNumberController.text = state.user.phoneNumber!;
                }
                if (state.user.region != null) {
                  selectedRegion = state.user.region;
                }
                if (state.user.password != null) {
                  passwordController.text = state.user.password!;
                }

                return Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 20),
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
                        validator: AppValidators.passwordValidation,
                      ),
                      const SizedBox(height: 20),
                      BlocBuilder<RegionBloc, RegionState>(
                        bloc: sl.get<RegionBloc>()
                          ..add(RegionEvent.getRegions()),
                        builder: (context, states) {
                          if (states.loading) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          } else if (states.error) {
                            return InkWell(
                              onTap: () => sl.get<RegionBloc>()
                                ..add(RegionEvent.getRegions()),
                              child: Text(states.errorMessage),
                            );
                          }
                          return DropdownFieldWidget(
                            labelText: 'بلد الاقامة',
                            icon: Icons.flag_rounded,
                            items: states.regions,
                            value: selectedRegion,
                            onChanged: (newValue) {
                              selectedRegion = newValue;
                              print(newValue);
                            },
                          );
                        },
                      ),
                      Button(
                        onPressed: () {
                          if (selectedRegion == null) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('الرجاء اختيار بلد الاقامة')),
                            );
                            return;
                          }
                          if (!(_formKey.currentState?.validate() ?? false)) {
                            return;
                          }
                          BlocProvider.of<CheckAuthBloc>(context).add(
                            CheckAuthEvent.updateInfo(
                                user: User(
                                  id: 0,
                                  name: nameController.text,
                                  email: emailController.text,
                                  phoneNumber: phoneNumberController.text,
                                  password: passwordController.text,
                                  region: selectedRegion?.toString() ?? '',
                                  role: 'student',
                                ),
                                isSend: false),
                          );
                          pageController.jumpToPage(1);
                        },
                        text: 'استمر',
                      ),
                    ],
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("لديك حساب؟"),
                  InkWell(
                    onTap: () {
                      AppRouter.router
                          .navigateTo(context, RoutesNames.loginRoute);
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
}
