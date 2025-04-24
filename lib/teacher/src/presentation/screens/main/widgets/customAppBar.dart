import 'package:educational_platform_app/core/routes/router_screens.dart';
import 'package:educational_platform_app/core/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TeacherCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String path;
  final bool isCustom;
  final Widget? child;
  final int filterlist;

  const TeacherCustomAppBar(
      {super.key,
      required this.path,
      this.preferredSize = const Size.fromHeight(150),
      this.isCustom = false,
      this.filterlist = 1,
      this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: preferredSize.height,
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/backgroundAppbar.png"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
          ),
          title: !isCustom
              ? Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Flexible(
                            child: Text(
                              'مرحبًا بك في عالم جديد من التعلم!',
                              style: TextStyle(
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
                            placeholderBuilder: (BuildContext context) =>
                                const SizedBox(
                              width: 30,
                              height: 30,
                              child: Center(child: CircularProgressIndicator()),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          filterlist != 1
                              ? _popupMenuListCourse(context)
                              : _popupMenuListTeacher(context),
                          const SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              style: const TextStyle(fontSize: 14),
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                  hintText: "ابحث عن دورة هنا ...",
                                  hintStyle: const TextStyle(
                                      color: Colors.grey, fontSize: 13),
                                  prefixIcon: const Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Icon(Icons.search, size: 20),
                                  ),
                                  prefixIconConstraints: const BoxConstraints(
                                    minWidth: 30,
                                    minHeight: 40,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                        color: Color(0xFFDFB547), width: 2),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                        color: Color(0xFFDFB547), width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                        color: Color(0xFFDFB547), width: 2.5),
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 3),
                                  isDense: true),
                            ),
                          ),
                          const SizedBox(width: 10),
                          // BlocBuilder<CheckAuthBloc, CheckAuthState>(
                          //   builder: (context, state) {
                          //     return GestureDetector(
                          //       onTap: () {
                          //         AppRouter.router.navigateTo(
                          //             context, RoutesNames.profileRoute);
                          //       },
                          //       child: ClipOval(
                          //           child: ProfilePictureEditor(
                          //               isEditable: false,
                          //               size: 40,
                          //               initialImageUrl: state.user.image ??
                          //                   state.auth!.student?.imagePath)),
                          //     );
                          //   },
                          // ),
                        ],
                      ),
                    ],
                  ),
                )
              : Container(),
        ),
        if (isCustom) child!,
      ],
    );
  }

  Widget _popupMenuListCourse(BuildContext context) {
    return PopupMenuButton<String>(
      offset: const Offset(20, 55),
      constraints: const BoxConstraints(maxWidth: 135),
      onSelected: (value) {
        AppRouter.router.navigateTo(
          context,
          RoutesNames.CoursesFilter,
          routeSettings: RouteSettings(arguments: value),
        );
      },
      itemBuilder: (BuildContext context) => [
        const PopupMenuItem<String>(
          value: 'literary',
          child: Text('دورات الادبي'),
        ),
        const PopupMenuItem<String>(
          value: 'scientific',
          child: Text('دورات العلمي'),
        ),
      ],
      child: SvgPicture.asset(
        'assets/images/logo_option.svg',
        width: 40,
        height: 40,
        fit: BoxFit.contain,
        placeholderBuilder: (BuildContext context) => const SizedBox(
          width: 50,
          height: 50,
          child: Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }

  Widget _popupMenuListTeacher(BuildContext context) {
    return PopupMenuButton<String>(
      offset: const Offset(20, 55),
      constraints: const BoxConstraints(maxWidth: 135),
      onSelected: (value) {
        AppRouter.router.navigateTo(
          context,
          RoutesNames.techerFilter,
          routeSettings: RouteSettings(arguments: int.parse(value)),
        );

        /*   context.read<TeacherFilterBloc>().add(
              TeacherFilterEvent.fetchTeachers(
                  specializationId: int.parse(value)),
            ); */
      },
      itemBuilder: (BuildContext context) => [
        const PopupMenuItem<String>(
          value: '1',
          child: Text('مدرس رياضيات'),
        ),
        const PopupMenuItem<String>(
          value: '2',
          child: Text('مدرس فيزياء'),
        ),
        const PopupMenuItem<String>(
          value: '3',
          child: Text('مدرس كيمياء'),
        ),
        const PopupMenuItem<String>(
          value: '4',
          child: Text('مدرس لغة عربية'),
        ),
        const PopupMenuItem<String>(
          value: '5',
          child: Text('مدرس لغة إنجليزية'),
        ),
      ],
      child: SvgPicture.asset(
        'assets/images/logo_option.svg',
        width: 40,
        height: 40,
        fit: BoxFit.contain,
        placeholderBuilder: (BuildContext context) => const SizedBox(
          width: 50,
          height: 50,
          child: Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
