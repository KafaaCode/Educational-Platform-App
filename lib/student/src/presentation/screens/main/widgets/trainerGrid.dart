
import 'package:educational_platform_app/student/src/presentation/screens/login/widgets/Text_field_widget.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/app_scaffold.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
class TrainerGrid extends StatelessWidget {

final String name;
final String count_Student;
final String path;
final String spaczaltion;
  TrainerGrid({required this.name,required this.count_Student,required this.path,required this.spaczaltion});
  @override
  Widget build(BuildContext context) {
     
    return Wrap(
  spacing: 2,
  runSpacing: 5,
  children: List.generate(6, (index) {
    return Container(
      width: MediaQuery.of(context).size.width > 800
          ? MediaQuery.of(context).size.width * 0.23 
          : MediaQuery.of(context).size.width > 550
              ? MediaQuery.of(context).size.width * 0.3 
              : MediaQuery.of(context).size.width * 0.47, 
      child: ClipPath(
        clipper: RoundedTopEdgeClipper(),
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 35), 

                ClipOval(
                  child: Image.asset(
                    '${this.path}',
                    width: 60, 
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),

               

                Text(
                  '${this.name}',
                  style: TextStyle(fontSize: 14),
                  textAlign: TextAlign.center,
                ),

                Text(
                  '${this.spaczaltion}',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),

                Text(
                  '${this.count_Student}طالب',
                  style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }),
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


    path.quadraticBezierTo(size.width, size.height, size.width - radius, size.height);
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
