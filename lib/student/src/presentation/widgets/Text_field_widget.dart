import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextInputField extends StatefulWidget {
  TextEditingController? controller;
  final String labeltext;
  final String? initialValue;
  final IconData icon;
  final TextInputType? textInputType;
  final String? Function(String?)? validator;
  final Function(String vlaue)? onChanged;
  final bool isPassword;
  final bool enabled;
  final Color? textColor;
  final Color? fillColor;

  TextInputField({
    super.key,
    required this.labeltext,
    required this.icon,
    this.onChanged,
    this.textInputType,
    this.initialValue,
    this.controller,
    this.validator,
    this.isPassword = false,
    this.enabled = true,
    this.textColor,
    this.fillColor,
  });

  @override
  State<TextInputField> createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<TextInputField> {
  bool _obscureText = true;
  late TextEditingController _internalController;

  @override
  void initState() {
    super.initState();
    _internalController = widget.controller ?? TextEditingController();
    if (widget.initialValue != null) {
      _internalController.text = widget.initialValue!;
    }
  }

  @override
  void didUpdateWidget(TextInputField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialValue != oldWidget.initialValue) {
      _internalController.text = widget.initialValue ?? '';
    }
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _internalController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Material(
        color: Colors.transparent,
        child: TextFormField(
          onChanged: widget.onChanged,
          controller: _internalController,
          enabled: widget.enabled,
          textDirection: TextDirection.ltr, // تغيير اتجاه النص
          textAlign: TextAlign.right, // محاذاة النص إلى اليمين
          obscureText: widget.isPassword ? _obscureText : false,
          style: TextStyle(color: widget.textColor),
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
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
            fillColor: widget.fillColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                style: BorderStyle.solid,
                color: Color.fromRGBO(223, 181, 71, 1),
                width: 2,
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
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: Colors.red,
                width: 1,
              ),
            ),
          ),
          validator: widget.validator,
          keyboardType: widget.textInputType,
        ),
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