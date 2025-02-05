import 'package:educational_platform_app/student/core/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppbarAccount extends StatelessWidget {
  const AppbarAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -70,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.all(0),
        width: 336.w,
        height: 110.h,
        margin: const EdgeInsets.fromLTRB(10, 80, 10, 10),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
            borderRadius: const BorderRadius.all(Radius.circular(16))),
        child: ListTile(
          leading: SizedBox(
            width: 60.w,
            height: 60.h,
            child: Image.asset(
              'assets/images/image.png',
              fit: BoxFit.contain,
            ),
          ),
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(223, 181, 71, 1),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                height: 50,
                width: 3,
              ),
              const SizedBox(
                width: 5,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Omar Saiouf',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'omar.omar.gmail@gmail.com',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
          trailing: Icon(
            Icons.keyboard_arrow_left_rounded,
            size: 18.sp,
          ),
          onTap: () {
            Navigator.pushNamed(context, RoutesNames.profileRoute);
          },
        ),
      ),
    );
  }
}
