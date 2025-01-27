import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFFF9E9), // Light beige background
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          // Background decorations
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 100,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFFFF9E9), Color(0xFFFFF9E9)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),

          Positioned(
            child: Opacity(
              opacity: 1,
              // Adjust transparency
              child: Image.asset(
                'assets/images/bg_points.png', // Replace with your image asset path
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 200,
            left: -23,
            child: Icon(
              Icons.rocket_launch_outlined,
              size: 100,
              color: const Color(0xFA9B48).withOpacity(0.2),
            ),
          ),
          Positioned(
            bottom: 120,
            right: -23,
            child: Transform.rotate(
                angle: -0.5,
                child: Icon(
                  Icons.laptop_mac_outlined,
                  size: 100,
                  color: Colors.orange.withOpacity(0.2),
                )),
          ),

          Positioned(
            top: 170,
            right: 170,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.orange.withOpacity(0.45),
              ),
              child: Transform.rotate(
                  angle: 0.43,
                  child: const Icon(
                    size: 32.0,
                    Icons.favorite,
                    color: Colors.white,
                  )),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
