import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  SectionTitle({required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.bold,
            ),
          ),
    
          TextButton(
  onPressed: this.onPressed,
  child: const Text(
    'عرض الكل',
    style: TextStyle(
      color: Colors.black,
      fontFamily: 'Cairo',
   
    ),
  ),
)

        ],
      ),
    );
  }
}
