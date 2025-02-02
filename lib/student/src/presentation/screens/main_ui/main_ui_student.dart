import 'package:educational_platform_app/student/src/presentation/screens/login/widgets/Text_field_widget.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/app_scaffold.dart';
import 'package:educational_platform_app/student/src/presentation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
          toolbarHeight: 150,
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/backgroundAppbar.png"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
          ),
          title: Column(
            children: [
              // سطر النص والأيقونة
              Row(
                mainAxisAlignment: MainAxisAlignment.start, // توسيط العناصر
                children: [
                  Flexible(
                    child: Text(
                      'مرحبًا بك في عالم جديد من التعلم!',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.bold,
                        fontSize: 18, // ضبط الحجم ليكون متناسقًا مع الشاشات الصغيرة
                      ),
                      textAlign: TextAlign.center, // جعل النص متناسقًا في المنتصف
                      overflow: TextOverflow.ellipsis, // تقليل الحجم في حال الشاشة صغيرة جدًا
                      maxLines: 1, // منع تجاوز النص لسطر واحد
                    ),
                  ),
                  SizedBox(width: 10), // إضافة مسافة بين النص والأيقونة
                  SvgPicture.asset(
                    'assets/images/star.svg',
                    width: 30, // تقليل الحجم ليكون متجاوبًا
                    height: 30,
                  ),
                ],
              ),
              SizedBox(height: 15),
              // سطر البحث والصور
              Row(
                children: [
                  // الصورة على اليسار
                 SvgPicture.asset(
                    'assets/images/logo_option.svg',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                 
                  SizedBox(width: 10),
                  // حقل البحث يأخذ المساحة المتاحة
                  Expanded(
                    child: TextField(
  decoration: InputDecoration(
    hintText: "ابحث عن مستخدم هنا",
    hintStyle: TextStyle(color: Colors.grey),
    prefixIcon: Icon(Icons.search), // أيقونة البحث صفراء
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30), // زوايا دائرية للحقل
      borderSide: BorderSide(color: Color(0xFFDFB547), width: 2), // الإطار الأصفر
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(color: Color(0xFFDFB547), width: 2), // الإطار عند عدم التحديد
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(color: Color(0xFFDFB547), width: 2.5), // لون مختلف عند التحديد
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10), // تصغير الارتفاع
  ),
)

                  ),
               SizedBox(width: 10),
                  // الصورة على اليمين
                 ClipOval(
                    child: Image.asset(
                      'assets/images/bg_intro_page1.png',
                      width: 50,
                      height:50,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

      body:Padding(
  padding: const EdgeInsets.all(8.0),
  child: SingleChildScrollView(
    child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/bg_things.png"),
          fit: BoxFit.cover, // تغطية كاملة للخلفية
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // تم تعليق TextField لأغراض التنظيم
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
bottomNavigationBar: ClipRRect(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20), // الزاوية العليا اليسرى
    topRight: Radius.circular(20), // الزاوية العليا اليمنى
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
            style: TextStyle(color: Colors.black,
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
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(10), // الزاوية العليا اليسرى مدورة
      topRight: Radius.circular(10), // الزاوية العليا اليمنى مدورة
      bottomLeft: Radius.circular(10), // الزاوية السفلى اليسرى بدون دوران
      bottomRight: Radius.circular(10), // الزاوية السفلى اليمنى بدون دوران
    ),
  ),
  child: Stack(
    children: [
      Padding(
        padding: const EdgeInsets.all(10), // إضافة padding للكارد
        child: LayoutBuilder(
          builder: (context, constraints) {
            double parentWidth = constraints.maxWidth;
            double availableHeight = 150;

            return Container(
              height: availableHeight,
              child: Row(
                children: [
                  Container(
                    width: parentWidth * 0.50,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                      image: DecorationImage(
                        image: AssetImage('images/backgroundAppbar.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: parentWidth * 0.50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 17, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               SizedBox(height: 20),
                              Text(
                                'برمجة مواقع الويب',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'المدرس عادل خزوم',
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                '16 ساعه تدريبية',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 0),
                        Container(
                          width: parentWidth * 0.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                width: parentWidth * 0.5 * 0.50,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: List.generate(
                                    5,
                                    (index) => Icon(
                                      Icons.star,
                                      color: Color(0xFFDFB547),
                                      size: parentWidth * 0.5 * 0.50 * 0.2,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: parentWidth * 0.5 * 0.30,
                                height: 40,
                                child: FloatingActionButton(
                                  onPressed: () {},
                                  backgroundColor: Color(0xFFDFB547),
                                  shape: CircleBorder(),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      
      // إضافة الأيقونة "قلب حب" في أعلى اليسار (سيظل الـ Positioned في المكان الصحيح)
      Positioned(
        top: 10,
        left: 10,
        child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: Color(0xFF588760),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
      ),

      // إضافة النص "30$" داخل شكل مستطيل مع زوايا مدورة في الجهة العليا اليمنى
      Positioned(
        top: 0,
        right:0,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          decoration: BoxDecoration(
            color: Color(0xFFDFB547),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(5),
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(0),
            ),
          ),
          child: Text(
            '30', 
            style: TextStyle(
              color: Colors.white, 
              fontSize: 20, 
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ],
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
  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
    maxCrossAxisExtent: 180, // تحديد الحد الأقصى لعرض العنصر
    childAspectRatio: 1 / 1.23, // تحسين الأبعاد ليناسب المحتوى
    crossAxisSpacing: 8,
    mainAxisSpacing: 8,
  ),
  itemCount: 10, // عدد العناصر الكلي
  itemBuilder: (context, index) {
    return ClipPath(
      clipper: RoundedTopEdgeClipper(),
      child: Card(
        color: Color(0xFFFFFFFF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding( // إضافة هوامش داخلية
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Column(
            mainAxisSize: MainAxisSize.min, // منع الـ Column من التمدد أكثر من اللازم
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 3),
              ClipOval(
                child: Image.asset(
                  'assets/images/bg_intro_page1.png', // استبدل بمسار الصورة الصحيح
                  width: 60, // تقليل عرض الصورة
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              
              Flexible( // جعل النصوص تتكيف مع المساحة المتاحة
                child: Text(
                  'عادل حسين خزوم',
                  style: TextStyle(fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ),
            
              Flexible(
                child: Text(
                  'برمجة وتصميم',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
         
              Flexible(
                child: Text(
                  'طالب 500',
                  style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                  textAlign: TextAlign.center,
                ),
              ),
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
