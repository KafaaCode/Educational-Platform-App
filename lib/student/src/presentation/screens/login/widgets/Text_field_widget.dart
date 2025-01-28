import 'package:flutter/material.dart';

class TextInputField extends StatefulWidget {
  final TextEditingController? controller;
  final String labeltext;
  final IconData icon;
  final TextInputType? textInputType;
  final FormFieldValidator<String>? validator;
  final bool isPassword;

  const TextInputField({
    super.key,
    required this.labeltext,
    required this.icon,
    this.textInputType,
    this.controller,
    this.validator,
    this.isPassword = false,
  });

  @override
  State<TextInputField> createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<TextInputField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: TextFormField(
        controller: widget.controller,
        textDirection: TextDirection.rtl,
        obscureText: widget.isPassword ? _obscureText : false,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 25, horizontal: 0),
          labelText: widget.labeltext,
          labelStyle: TextStyle(
            fontFamily: 'Cairo',
            color: Colors.grey[600],
          ),
          prefixIcon: Icon(widget.icon),
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
              : null,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              style: BorderStyle.solid,
              color: Color.fromRGBO(223, 181, 71, 1),
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Colors.blue,
              width: 2,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Colors.red,
              width: 2,
            ),
          ),
        ),
        validator: widget.validator,
        keyboardType: widget.textInputType,
      ),
    );
  }
}
//  (value) {
//         if (value == null || value.isEmpty) {
//           return 'الرجاء إدخال البريد الإلكتروني';
//         }
//         if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
//           return 'البريد الإلكتروني غير صالح';
//         }
//         return null;
//       }