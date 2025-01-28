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
        // alignment: Alignment.center,
        height: 100,
        width: 460,
        decoration: BoxDecoration(
          color: isSelected
              ? const Color.fromRGBO(223, 181, 71, 1)
              : const Color.fromRGBO(88, 135, 96, 1),
          borderRadius: BorderRadius.circular(16),
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
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
                right: 150,
                bottom: 50,
                child: Image.asset(
                  'assets/images/bg_btn.png',
                  color: Colors.white,
                )),
            Text(
              label,
              style: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w800,
                decoration: TextDecoration.none,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
