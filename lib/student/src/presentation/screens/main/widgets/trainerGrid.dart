import 'package:flutter/material.dart';

class TrainerGrid extends StatelessWidget {
  final Function() onTap;
  final String name;
  final String count_Student;
  final String path;
  final String spaczaltion;
  const TrainerGrid(
      {super.key,
      required this.name,
      required this.count_Student,
      required this.path,
      required this.spaczaltion,
      required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width > 800
          ? MediaQuery.of(context).size.width * 0.23
          : MediaQuery.of(context).size.width > 550
              ? MediaQuery.of(context).size.width * 0.3
              : MediaQuery.of(context).size.width * 0.48,
      child: ClipPath(
        clipper: RoundedTopEdgeClipper(),
        child: InkWell(
          onTap: onTap,
          child: Card(
            color: Theme.of(context).cardColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 35),
                  ClipOval(
                    child: Image.asset(
                      path,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    
                              maxLines: 1, 
                        textDirection: TextDirection.ltr,
  overflow: TextOverflow.ellipsis, 
                    '${this.name}',
                    style: TextStyle(
                      fontFamily: 'cairo',
                      fontSize: 14,
                      color: Color(0xFF616161),
                    ),
                    textAlign: TextAlign.center,
                  ),
                     SizedBox(height: 5,),
                  Text(
                      maxLines: 1, 
                        textDirection: TextDirection.ltr,
  overflow: TextOverflow.ellipsis, 
                    '${this.spaczaltion}',
                    style: TextStyle(
                        fontFamily: 'cairo',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                    ),
                    textAlign: TextAlign.center,
                  ),
                   SizedBox(height: 5,),
                  Text(
                    '${this.count_Student} طالب',
                    style: TextStyle(
                        fontFamily: 'cairo',
                      fontSize: 15,
                      color: Color(0xFF616161),
                    ),
                    textAlign: TextAlign.center,
                  ),
                   SizedBox(height: 10,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RoundedTopEdgeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 50;
    Path path = Path();

    path.moveTo(radius, 30);
    path.lineTo(size.width / 2, 37);
    path.lineTo(size.width - radius, 30);

    path.quadraticBezierTo(size.width, 30, size.width, 30 + radius);
    path.lineTo(size.width, size.height - radius);

    path.quadraticBezierTo(
        size.width, size.height, size.width - radius, size.height);
    path.lineTo(radius, size.height);

    path.quadraticBezierTo(0, size.height, 0, size.height - radius);
    path.lineTo(0, 30 + radius);

    path.quadraticBezierTo(0, 30, radius, 30);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
