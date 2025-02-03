import 'package:educational_platform_app/student/src/data/models/models.dart';
import 'package:flutter/material.dart';

class DropdownFieldWidget extends StatelessWidget {
  final String labelText;
  final IconData icon;
  final List<Region> items;
  final String? value;
  final Function(String?)? onChanged;

  const DropdownFieldWidget({
    super.key,
    required this.labelText,
    required this.icon,
    required this.items,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: DropdownButtonFormField<String>(
        value: value?.isEmpty ?? true ? null : value,
        items: items.map((Region region) {
          return DropdownMenuItem<String>(
            value: region.id.toString(),
            child: Text(region.name),
          );
        }).toList(),
        onChanged: onChanged,
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
}
