import 'package:educational_platform_app/student/src/presentation/screens/login/widgets/Text_field_widget.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/app_scaffold.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Main_ui_scrren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      leading: const BackButton(
        // Icons.arrow_back_rounded,
        color: Colors.white,
      ),
      appBarHeight: 150,
      showLogo: true,
      appBarContent:Padding(padding:EdgeInsets.all(20.0.sp),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:  FittedBox(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
            Row(
          children: [
                 Text('i ali',style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.15),),
                 Text('i ali'),
          ],
          ), 
          SizedBox(height: 40),
            Row(
          children: [
                   Text('i ali'),
                 Text('i ali'),
          ],
          ),
              
             
            ],
          )),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 120,
            ),
            Expanded(
              flex: 5,
              child: Column(
                children: [
                 
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
