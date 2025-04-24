import 'package:educational_platform_app/core/services/services_locator.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/TeacherFilter/teacher_filter_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/check_auth/check_auth_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class TecherFilter extends StatelessWidget {
  final int specializationID;
  const TecherFilter({super.key, required this.specializationID});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        path: 'assets/images/bg_intro_page1.png',
        preferredSize: const Size.fromHeight(100),
        isCustom: true,
        child: BlocBuilder<CheckAuthBloc, CheckAuthState>(
          builder: (context, state) {
            // إذا كانت الحالة "نجاح" (isAuth)، نمرر اسم المستخدم
            if (state.isAuth) {
              return buildUserRow(userName: state.user.name);
            }

            // في حالة اللودينج أو الخطأ، لا نمرر اسم المستخدم
            return buildUserRow();
          },
        ),
      ),
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg_things.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: BlocProvider(
          create: (context) => TeacherFilterBloc(repository: sl())
            ..add(TeacherFilterEvent.fetchTeachers(
                specializationId: specializationID)),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.02,
              ),
              child: BlocBuilder<TeacherFilterBloc, TeacherFilterState>(
                builder: (context, state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const SizedBox(height: 20),
                      RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text:
                                  'اختصاص : ', // الكلمة التي تريد تلوينها بالأسود
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Cairo',
                                color: Colors.black, // لون أسود
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: state.teachers.isNotEmpty
                                  ? state.teachers[0].specialization.name
                                  : 'لا يوجد اختصاصات متاحة', // النص المتغير
                              style: const TextStyle(
                                fontSize: 15,
                                fontFamily: 'Cairo',
                                color:
                                    Color(0xFF588760), // اللون الأخضر المطلوب
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Wrap(
                        spacing: MediaQuery.of(context).size.width * 0.06,
                        runSpacing: 15,
                        children: List.generate(state.teachers.length, (i) {
                          return Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).cardColor,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Theme.of(context)
                                      .shadowColor
                                      .withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 8,
                                  offset: const Offset(3, 3),
                                ),
                              ],
                            ),
                            height: 200,
                            width: MediaQuery.of(context).size.width > 971
                                ? MediaQuery.of(context).size.width * 0.27
                                : MediaQuery.of(context).size.width > 800
                                    ? MediaQuery.of(context).size.width * 0.27
                                    : MediaQuery.of(context).size.width > 621
                                        ? MediaQuery.of(context).size.width *
                                            0.44
                                        : MediaQuery.of(context).size.width *
                                            0.44,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(0), // منحنيات جميلة
                                  child: SizedBox.expand(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(height: 5),
                                          ClipOval(
                                            child: Image.asset(
                                              'assets/images/bg_intro_page1.png',
                                              width: 55,
                                              height: 55,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            state.teachers[i].user?.name ?? '',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Cairo',
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium
                                                  ?.color,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            state.teachers[i].phoneNumber,
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Cairo',
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge
                                                  ?.color,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            'خبره تزيد عن 3 سنوات في برمجة الويب وتطوير واجهات المستخدم',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Cairo',
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium
                                                  ?.color,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 3,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    decoration: BoxDecoration(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        topLeft: Radius.circular(5),
                                        bottomLeft: Radius.circular(0),
                                        bottomRight: Radius.circular(20),
                                      ),
                                    ),
                                    child: const Text(
                                      '6 دورات',
                                      style: TextStyle(
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
                      )
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildUserRow({String? userName}) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: Text(
                '${userName ?? ''} اختر معلمك المثالي!',
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            const SizedBox(width: 10),
            SvgPicture.asset(
              'assets/images/star.svg',
              width: 30,
              height: 30,
              placeholderBuilder: (BuildContext context) => const SizedBox(
                width: 30,
                height: 30,
                child: Center(child: CircularProgressIndicator()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
