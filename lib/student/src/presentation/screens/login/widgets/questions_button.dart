import 'package:flutter/material.dart';

class QuestionsButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  QuestionsButton({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 100,
        width: 460,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: isSelected
                ? [
                    const Color.fromRGBO(120, 159, 128, 0.6),
                    const Color.fromRGBO(85, 148, 92, 0.6),
                    const Color.fromRGBO(75, 119, 86, 0.6),
                  ]
                : [
                    const Color.fromRGBO(255, 255, 255, 0.5),
                    const Color.fromRGBO(255, 255, 255, 0.7),
                    const Color.fromRGBO(255, 255, 255, 0.5),
                  ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.white,
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: const Offset(0, 6),
                blurRadius: 6),
          ],
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w800,
            decoration: TextDecoration.none,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
