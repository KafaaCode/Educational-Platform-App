import 'package:flutter/material.dart';

class TestsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/bg_things.png"),
              fit: BoxFit.cover,
            ),
          ),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.02,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'نخبة المدربين',
                style: const TextStyle(
                  fontSize: 18,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                ),

              ),
              SizedBox(height: 10),
              Wrap(
                spacing: MediaQuery.of(context).size.width * 0.06,
                runSpacing: 15,
                children: List.generate(6, (index) {
                  return Container(
                     decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 8, 
            offset: Offset(3, 3),
          ),
        ],
      ),
                 
                    height: 200,
                    width: MediaQuery.of(context).size.width > 971
                        ? MediaQuery.of(context).size.width * 0.27
                        : MediaQuery.of(context).size.width > 800
                            ? MediaQuery.of(context).size.width * 0.27
                            : MediaQuery.of(context).size.width > 621
                                ? MediaQuery.of(context).size.width * 0.44
                                : MediaQuery.of(context).size.width * 0.44,
                    child: Stack(
                      children: [
                        ClipRRect(
                          
                          borderRadius: BorderRadius.circular(0), // منحنيات جميلة
                          child: Container(
                          
                            child: SizedBox.expand(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 5),
                                   ClipOval(
                      child: Image.asset(
                        'images/bg_intro_page1.png',
                        width: 55,
                        height: 55,
                        fit: BoxFit.cover,
                      ),
                    ),
                      SizedBox(height: 5),
                    Text('عادل حسين خرزوم',
                    
                      style: const TextStyle(fontSize: 14,
                      fontFamily: 'Cairo',
                      color: Colors.grey,
                      ),
                        overflow: TextOverflow.ellipsis,
  maxLines: 1,
                       ),  SizedBox(height: 5),
                        Text('برمجة وتصميم',
                    
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,fontFamily: 'Cairo',
                      
                      ),
                                           overflow: TextOverflow.ellipsis,
  maxLines: 1,
                      ),  SizedBox(height: 5),
                       Text('خبره تزيد عن 3 سنوات في برمجة الويب وتطوير واجهات المستخدم',
                    
                      style: const TextStyle(fontSize: 12
                      ,fontFamily: 'Cairo',
                      color: Colors.grey,  
                      ),
                     overflow: TextOverflow.ellipsis,
  maxLines: 3,
                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                            decoration: const BoxDecoration(
                              color: Color(0xFFDFB547),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(5),
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            child: Text(
                              '6 دورات',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
