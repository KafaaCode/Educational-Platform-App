import 'package:flutter/material.dart';

class DropdownFieldWidget extends StatelessWidget {
  final String labelText;
  final IconData icon;
  final List<String> items;
  final String? value;
  final Function(String?) onChanged;

  const DropdownFieldWidget({
    Key? key,
    required this.labelText,
    required this.icon,
    required this.items,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: DropdownButtonFormField<String>(
        value: value,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
          labelText: labelText,
          labelStyle: TextStyle(
            fontFamily: 'Cairo',
            color: Colors.grey[600],
          ),
          prefixIcon: Icon(icon),
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
        ),
        items: items.map<DropdownMenuItem<String>>((String value1) {
          return DropdownMenuItem<String>(
            value: value1,
            child: Text(
              value1,
              textDirection: TextDirection.rtl,
              style: const TextStyle(fontFamily: 'Cairo'),
            ),
          );
        }).toList(),
        onChanged: onChanged,
        isExpanded: true,
        //textDirection: TextDirection.rtl,
        alignment: Alignment.centerRight,
      ),
    );
  }
}
