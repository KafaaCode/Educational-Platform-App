import 'package:educational_platform_app/student/src/presentation/screens/siginin/widgets/page_line.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/Text_field_widget.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/button.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/dropdown_Field_widget.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    var selectedValue;
    return Container(
      alignment: Alignment.center,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const PageLine(
            pageIndex: 0,
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                TextInputField(
                  controller: TextEditingController(text: ""),
                  labeltext: "الاسم الكامل",
                  icon: Icons.person,
                ),
                const SizedBox(
                  height: 20,
                ),
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
                DropdownFieldWidget(
                  labelText: 'بلد الاقامة',
                  icon: Icons.flag_rounded,
                  items: ['اعزاز', 'الباب', 'جرابلس'],
                  value: selectedValue,
                  onChanged: (newValue) {
                    setState(() {
                      selectedValue = newValue;
                    });
                  },
                ),
                Button(
                  onPressed: () {},
                  text: 'استمر',
                )
              ],
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
                    print("stooop");
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
