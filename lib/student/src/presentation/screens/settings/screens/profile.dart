import 'package:educational_platform_app/core/localization/generated/l10n.dart';
import 'package:educational_platform_app/core/routes/router_screens.dart';
import 'package:educational_platform_app/core/routes/routes_name.dart';
import 'package:educational_platform_app/core/services/services_locator.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/Region/Region_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/check_auth/check_auth_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/screens/settings/widgets/profile_picture_editor.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/Text_field_widget.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/app_scaffold.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/button.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/dropdown_Field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<StatefulWidget> createState() => _Profile();
}

class _Profile extends State<Profile> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  String? gander;
  String? academicStage;
  String? academicType;
  String? region;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckAuthBloc, CheckAuthState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        if (gander == null) {
          gander = state.user.gander;
          academicStage = state.user.academic_stage?['stage'] ??
              state.auth?.student?.academic_stage.stage;
          academicType = state.user.academic_stage?['type'] ??
              state.auth?.student?.academic_stage.type;
          region = state.user.region;
        }
        return AppScaffold(
          appBarHeight: 60,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ProfilePictureEditor(
                          size: 150,
                          initialImageUrl:
                              state.user.image ?? state.auth!.student?.imagePath,
                        ),
                        const SizedBox(height: 20),
                        TextInputField(
                          controller: nameController,
                          initialValue: state.user.name,
                          labeltext: "الاسم الكامل",
                          icon: Icons.person,
                          textColor:
                              Theme.of(context).textTheme.bodyLarge?.color,
                          fillColor: Theme.of(context).cardColor,
                        ),
                        const SizedBox(height: 20),
                        TextInputField(
                          controller: emailController,
                          initialValue: state.user.email,
                          enabled: false,
                          labeltext: "البريد الألكتروني",
                          icon: Icons.email_rounded,
                          textColor:
                              Theme.of(context).textTheme.bodyLarge?.color,
                          fillColor: Theme.of(context).cardColor,
                        ),
                        const SizedBox(height: 20),
                        TextInputField(
                          controller: phoneNumberController,
                          labeltext: "رقم الهاتف",
                          icon: Icons.phone,
                          initialValue: state.user.phoneNumber,
                          textColor:
                              Theme.of(context).textTheme.bodyLarge?.color,
                          fillColor: Theme.of(context).cardColor,
                        ),
                        const SizedBox(height: 20),
                        TextInputField(
                          icon: Icons.lock,
                          labeltext: "كلمة المرور",
                          isPassword: true,
                          initialValue: state.user.password,
                          controller: passwordController,
                          textColor:
                              Theme.of(context).textTheme.bodyLarge?.color,
                          fillColor: Theme.of(context).cardColor,
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
                              value: state.user.region,
                              onChanged: (newValue) {
                                region = newValue;
                              },
                              textColor:
                                  Theme.of(context).textTheme.bodyLarge?.color,
                              fillColor: Theme.of(context).cardColor,
                            );
                          },
                        ),
                        const SizedBox(height: 20),
                        DropdownWidget(
                          icon: gander == 'male' ? Icons.male : Icons.female,
                          items: const ["male", "female"],
                          value: state.user.gander,
                          labelText: "الجنس",
                          onChanged: (v) {
                            setState(() {});
                            gander = v;
                          },
                          textColor:
                              Theme.of(context).textTheme.bodyLarge?.color,
                          fillColor: Theme.of(context).cardColor,
                        ),
                        const SizedBox(height: 20),
                        DropdownWidget(
                          icon: academicStage == 'secondary'
                              ? Icons.school
                              : Icons.grade,
                          items: const ["primary", "preparatory", "secondary"],
                          value: academicStage,
                          labelText: "المرحلة الدراسية",
                          onChanged: (v) {
                            setState(() {});
                            academicStage = v;
                          },
                          textColor:
                              Theme.of(context).textTheme.bodyLarge?.color,
                          fillColor: Theme.of(context).cardColor,
                        ),
                        const SizedBox(height: 20),
                        if (academicStage == 'secondary' ||
                            state.user.academic_stage?['stage'] == 'secondary')
                          DropdownWidget(
                            icon: academicType == 'scientific'
                                ? Icons.science
                                : Icons.book,
                            items: const ["scientific", "literary", "General"],
                            value: academicType,
                            labelText: "المرحلة الدراسية",
                            onChanged: (v) {
                              setState(() {});
                              academicType = v;
                            },
                            textColor:
                                Theme.of(context).textTheme.bodyLarge?.color,
                            fillColor: Theme.of(context).cardColor,
                          ),
                        Button(
                          onPressed: () {
                            final updatedUser = state.user.copyWith(
                              name: nameController.text,
                              email: emailController.text,
                              password: passwordController.text,
                              phoneNumber: phoneNumberController.text,
                              region: region,
                              gander: gander,
                              academic_stage: {
                                'stage': academicStage,
                                'type': academicType
                              },
                            );
                            if (state.user.region == null) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('الرجاء اختيار بلد الاقامة')),
                              );
                              return;
                            }
                            BlocProvider.of<CheckAuthBloc>(context).add(
                              CheckAuthEvent.updateInfo(
                                  user: updatedUser, isSend: true),
                            );
                          },
                          text: 'تعديل',
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BlocListener<CheckAuthBloc, CheckAuthState>(
                          listener: (context, state) {
                            if (!state.isAuth) {
                              AppRouter.router
                                  .navigateTo(context, RoutesNames.loginRoute);
                            }
                          },
                          child: InkWell(
                            onTap: () {
                              context.read<CheckAuthBloc>().add(
                                    const CheckAuthEvent.logout(),
                                  );
                            },
                            child: Text(
                              'تسجيل خروج',
                              style: TextStyle(color: Colors.red[500]),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class DropdownWidget extends StatelessWidget {
  final String labelText;
  final IconData icon;
  final List<String> items;
  final String? value;
  final Function(String?)? onChanged;
  final Color? textColor;
  final Color? fillColor;

  const DropdownWidget({
    super.key,
    required this.labelText,
    required this.icon,
    required this.items,
    required this.value,
    required this.onChanged,
    this.textColor,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    // Ensure value exists in items before using it

    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: DropdownButtonFormField<String?>(
        value: value,
        hint: Text(labelText),
        items: items.map((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(transf(item)),
          );
        }).toList(),
        onChanged: onChanged,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
          labelText: labelText,
          labelStyle: TextStyle(
            fontFamily: 'Cairo',
            color: textColor ?? Colors.grey[600],
          ),
          prefixIcon: Icon(icon),
          filled: true,
          fillColor: fillColor ?? Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              style: BorderStyle.solid,
              color: Color.fromRGBO(223, 181, 71, 1),
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              style: BorderStyle.solid,
              color: Color.fromRGBO(223, 181, 71, 1),
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              style: BorderStyle.solid,
              color: Color.fromRGBO(223, 181, 71, 1),
              width: 1,
            ),
          ),
        ),
      ),
    );
  }

  String transf(String value) {
    Lang lang = Lang.current;
    switch (value) {
      case 'scientific':
        return lang.scientific;
      case 'literary':
        return lang.literary;
      case 'General':
        return lang.general;
      case 'primary':
        return lang.primary;
      case 'preparatory':
        return lang.preparatory;
      case 'secondary':
        return lang.secondary;
      case 'male':
        return lang.male;
      case 'female':
        return lang.female;
    }
    return '';
  }
}
