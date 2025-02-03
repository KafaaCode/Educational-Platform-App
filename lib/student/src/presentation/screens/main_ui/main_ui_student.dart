import 'package:educational_platform_app/student/src/presentation/screens/login/widgets/Text_field_widget.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/courseCard.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/customAppBar.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/sectionTitle.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/trainerGrid.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/app_scaffold.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Main_ui_scrren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   double screenWidth = MediaQuery.of(context).size.width;
        bool isWideScreen = screenWidth >= 650;
    return Scaffold(
      appBar: CustomAppBar(path:'assets/images/bg_intro_page1.png'),
      body:Padding(
       
  padding: const EdgeInsets.all(8.0),
  child: SingleChildScrollView(
    child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/bg_things.png"),
          fit: BoxFit.cover, 
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          SizedBox(height: 20),
          SectionTitle(title: 'الدورات الأكثر شيوعًا'),
          isWideScreen ?  Row(
            children: [
              Expanded(child: CourseCard(name:'Ali sheakho',time_triner: 10,path:'images/backgroundAppbar.png',spaczaltion:'التسويق الرقمي',parce: 100,evaluation: 5)),
              SizedBox(width: 10),
              Expanded(child: CourseCard(name:'Ali sheakho',time_triner: 10,path:'images/backgroundAppbar.png',spaczaltion:'التسويق الرقمي',parce: 100,evaluation: 5)),
            ],  )  :CourseCard(name:'Ali sheakho',time_triner: 10,path:'images/backgroundAppbar.png',spaczaltion:'التسويق الرقمي',parce: 100,evaluation: 5),
        
           
          SectionTitle(title: 'نخبة المدربين'),
          TrainerGrid(name:'Adel kharzom',count_Student:'1000',path:'assets/images/bg_intro_page1.png',spaczaltion:'التسويق الرقمي'),
          SectionTitle(title: 'العروض والمحتوى المميز'),
            isWideScreen ?  Row(
            children: [
              Expanded(child: CourseCard(name:'Ali sheakho',time_triner: 10,path:'images/backgroundAppbar.png',spaczaltion:'التسويق الرقمي',parce: 100,evaluation: 5)),
              SizedBox(width: 10),
              Expanded(child: CourseCard(name:'Ali sheakho',time_triner: 10,path:'images/backgroundAppbar.png',spaczaltion:'التسويق الرقمي',parce: 100,evaluation: 5)),
            ],  )  :CourseCard(name:'Ali sheakho',time_triner: 10,path:'images/backgroundAppbar.png',spaczaltion:'التسويق الرقمي',parce: 100,evaluation: 5),
        ],
      ),
    ),
  ),
),
bottomNavigationBar: ClipRRect(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20), 
    topRight: Radius.circular(20), 
  ),
  child: BottomNavigationBar(
    backgroundColor: Color(0xFF588760),
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.white70,
    items: [
      BottomNavigationBarItem(
        backgroundColor: Color(0xFF588760),
        icon: Icon(Icons.home),
        label: 'الرئيسية',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.message),
        label: 'الرسائل',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.book),
        label: 'الدورات',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'الملف الشخصي',
      ),
    ],
  ),
)

    );
  }
}

