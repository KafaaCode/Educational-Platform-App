import 'package:flutter/material.dart';
class CourseInfoText extends StatelessWidget {

  final String value;
  final Color color;
   final FontWeight? fontWeight;

  
  CourseInfoText({ required this.value, required this.color, this.fontWeight});
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
 
        Text(
            maxLines: 1,

            overflow: TextOverflow.ellipsis,
          value,
           style: TextStyle(color: this.color, fontWeight:this.fontWeight,fontFamily: 'Cairo', fontSize: 14),),
      ],
    );
  }
}