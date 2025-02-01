import 'package:educational_platform_app/student/src/presentation/screens/login/widgets/Text_field_widget.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/app_scaffold.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

/* class Main_ui_scrren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    backgroundColor: Colors.transparent, // يجعل الخلفية شفافة
    elevation: 0, // يزيل الظل
    toolbarHeight: 150, // تحديد ارتفاع واضح للـ AppBar
    flexibleSpace: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg_intro_page1.png"), // تأكد من أن المسار صحيح
          fit: BoxFit.cover,
        ),
      ),
      child: Center( // يضمن أن العناصر تكون في المنتصف ولا تحدث Overflow
        child: Column(
          mainAxisSize: MainAxisSize.min, // يجبر العمود على استخدام المساحة المتاحة فقط
          children: [
            Text(
              "مرحبًا بك!",
              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Icon(Icons.star, color: Colors.yellow, size: 30),
          ],
        ),
      ),
    ),
  ),
  body: Center(child: Text("المحتوى هنا")), // تجنب استخدام AppBar فقط بدون Body
);

    /* return AppScaffold(
      leading: const BackButton(
        color: Color.fromARGB(255, 104, 101, 101),
      ),
      appBarHeight: 170,
      showLogo: true,
      appBarContent: Padding(
        padding: const EdgeInsets.only(top: 20, left: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'مرحبا بك في عالم جديد من التعلم!',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Icon(
                  Icons.star_purple500,
                  size: MediaQuery.of(context).size.width * 0.1,
                  color: Colors.yellow,
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/logo_option.svg',
                  fit: BoxFit.contain,
                  width: 40,
                  height: 40,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "ابحث عن مستخدم هنا",
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.yellow, width: 2),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            const SizedBox(height: 120),
            Expanded(
              flex: 5,
              child: Column(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  } */}
}
 */

class Main_ui_scrren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         toolbarHeight:150,
        backgroundColor: Color(0xFF588760),
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
             
                Text('مرحبًا بك في عالم جديد من التعلم!',style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold
                
                ),),
                 SvgPicture.asset(
                  'images/star.svg',
                  fit: BoxFit.contain,
                  width: 40,
                  height: 40,
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'images/logo_option.svg',
                  fit: BoxFit.contain,
                  width: 40,
                  height: 40,
                ),
                SizedBox(width: 350,
                 child:  TextField(
                    decoration: InputDecoration(
                      hintText: "ابحث عن مستخدم هنا",
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.yellow, width: 2),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      
                    ),)  ,),
                        SvgPicture.asset(
                  'images/logo_option.svg',
                  fit: BoxFit.contain,
                  width: 40,
                  height: 40,
                ),
                  

               
                    
              ],
            )
      
          ],
        ),
      ),
      body: Padding(
        
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Container(
              decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage("images/bg_things.png"),
      fit: BoxFit.cover, // تغطية كاملة للخلفية
    ),),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              /*   TextField(
                  decoration: InputDecoration(
                    hintText: 'ابحث عن مستخدم هنا...',
                    prefixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.grey[800],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ), */
                SizedBox(height: 20),
                SectionTitle(title: 'الدورات الأكثر شيوعًا'),
                CourseCard(),
                SectionTitle(title: 'نخبة المدربين'),
                TrainerGrid(),
                SectionTitle(title: 'العروض والمحتوى المميز'),
                CourseCard(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:  Color(0xFF588760),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        items: [
          BottomNavigationBarItem(
            backgroundColor:  Color(0xFF588760),
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
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, 
            fontFamily: 'Cairo',
            
            ),
          ),
          Text(
            'عرض الكل',
            style: TextStyle(color: Colors.greenAccent,
            fontFamily: 'Cairo',
            )
            ,
          ),
        ],
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFFFFFF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Center(
                child: Text(
                  '30 ساعة',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'برمجة مواقع الويب',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text('المدرس عادل خزوم'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: List.generate(5, (index) => Icon(Icons.star, color: Colors.yellow, size: 16)),
                      ),
                      Text('25 \$', style: TextStyle(color: Colors.greenAccent))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TrainerGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2.1 / 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        return ClipPath(
           clipper: RoundedTopEdgeClipper(),
          child: Card(
            
            color: Color(0xFFFFFFFF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   SizedBox(height: 10),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/logo.png'),
                    
                  ),
                  SizedBox(height: 8),
                  Text('عادل حسين خزوم', style: TextStyle(
                  fontSize: 17,
                  
                  )),
                  
                  SizedBox(height: 9),
                  Text('برمجة وتصميم', style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  
                  )),
                     SizedBox(height: 9),
                  Text('طالب 500', style: TextStyle(
                  fontSize: 17,
              
                  
                  ))

                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
 
/* 



class Main_ui_scrren extends StatelessWidget {
  const Main_ui_scrren({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          
          child: ClipPath(
            clipper: RoundedTopEdgeClipper(),
            child: Container(
              width: 300,
              height: 300,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
} */

class RoundedTopEdgeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 50; // نصف قطر الزوايا المستديرة
    Path path = Path();

    // الزاوية اليسرى العلوية
    path.moveTo(radius, 30);
    path.lineTo(size.width / 2, 37); // كسر للأسفل في المنتصف
    path.lineTo(size.width - radius, 30);
    
    // الزاوية اليمنى العلوية
    path.quadraticBezierTo(size.width, 30, size.width, 30 + radius);
    path.lineTo(size.width, size.height - radius);

    // الزاوية اليمنى السفلية
    path.quadraticBezierTo(size.width, size.height, size.width - radius, size.height);
    path.lineTo(radius, size.height);

    // الزاوية اليسرى السفلية
    path.quadraticBezierTo(0, size.height, 0, size.height - radius);
    path.lineTo(0, 30 + radius);

    // الزاوية اليسرى العلوية
    path.quadraticBezierTo(0, 30, radius, 30);

    path.close(); // إغلاق الشكل
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
