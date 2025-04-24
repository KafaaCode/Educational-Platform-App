import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final Function()? onTap;
  const SectionTitle({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).textTheme.bodyLarge?.color;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 15,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w600,
              color:  Color(0xFF212121) ,
            ),
          ),
          InkWell(
                    onTap: onTap,
                    child:
                     Row(
                       children: [
                         Text(
                          'عرض الكل',
                          style: TextStyle(
                            color: Color(0xFF616161),
                            fontFamily: 'Cairo',
                             fontSize: 15,
                          ),
                                     ),
                                     SizedBox(width: 5,),
                                           Transform(
  alignment: Alignment.center, 
  transform: Matrix4.identity()..scale(-1.0, 1.0),
  child: Icon(Icons.arrow_back_ios_new ,size: 13, color:Color(0xFF212121) ,),
)
                       ],
                     ),
                  )
        
        ],
      ),
    );
  }
}
