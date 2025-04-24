import 'package:educational_platform_app/core/routes/router_screens.dart';
import 'package:educational_platform_app/core/routes/routes_name.dart';
import 'package:educational_platform_app/core/services/services_locator.dart';
import 'package:educational_platform_app/student/src/data/models/models.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/course_details/course_details_bloc.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CourseCard extends StatefulWidget {
  final String path;
  final Course course;
  const CourseCard({
    super.key,
    required this.course,
    required this.path,
  });

  @override
  State<CourseCard> createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  final CourseDetailsBloc _courseDetailsBloc = sl.get<CourseDetailsBloc>();

  @override
  void initState() {
    super.initState();
    _courseDetailsBloc
        .add(CourseDetailsEvent.initCourse(course: widget.course));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseDetailsBloc, CourseDetailsState>(
        bloc: _courseDetailsBloc,
        builder: (context, state) {
          return InkWell(
            onTap: () {
              AppRouter.router.navigateTo(
                context,
                RoutesNames.courseRoute,
                transition: TransitionType.fadeIn,
                routeSettings: RouteSettings(arguments: state.course),
              );
            },
            child: Card(
              color: Theme.of(context).cardColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        double parentWidth = constraints.maxWidth;
                        double availableHeight = 150;
                        return SizedBox(
                          height: availableHeight,
                          child: Row(
                            children: [
                              Container(
                                width: parentWidth * 0.50,
                                height: 300,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                                  image: DecorationImage(
                                    image: state.course.imagePath != null
                                        ? Image.network(
                                            state.course.imagePath!,
                                            errorBuilder: (BuildContext context,
                                                Object exception,
                                                StackTrace? stackTrace) {
                                              return Image.asset(widget.path);
                                            },
                                          ).image
                                        : Image.asset(widget.path).image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: parentWidth * 0.50,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 17, top: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(height: 20),
                                          SizedBox(
                                            width: parentWidth * 0.45,
                                            child: Text(
                                              state.course.name,
                                              softWrap: false,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Theme.of(context)
                                                    .textTheme
                                                    .bodyLarge
                                                    ?.color,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            state.course.teacher.specialization
                                                .name,
                                            softWrap: false,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge
                                                  ?.color,
                                            ),
                                          ),
                                          Text(
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            '${widget.course.countVideos} عدد االدروس',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge
                                                  ?.color,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 1),
                                    SizedBox(
                                      width: parentWidth * 0.5,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(
                                                right: 10),
                                            width: parentWidth * 0.5 * 0.50,
                                            child: Row(
                                              children: buildStars(
                                                  state.course.evaluationRate
                                                      .toInt(),
                                                  parentWidth),
                                            ),
                                          ),
                                          if (!widget.course.is_enrolled)
                                            SizedBox(
                                              width: parentWidth * 0.5 * 0.30,
                                              height: 40,
                                              child: FloatingActionButton(
                                                heroTag:
                                                    'course_${state.course.id}_${DateTime.now().millisecondsSinceEpoch}',
                                                onPressed: () {},
                                                backgroundColor:
                                                    Theme.of(context)
                                                        .primaryColor,
                                                shape: const CircleBorder(),
                                                child: const Icon(
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
                  if (!widget.course.is_enrolled)
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                            child: InkWell(
                          onTap: () {
                            _courseDetailsBloc.add(
                                CourseDetailsEvent.toggleFavorite(
                                    course: state.course));
                          },
                          child: Icon(
                            state.course.is_favorite
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: Colors.white,
                            size: 20,
                          ),
                        )),
                      ),
                    ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 0),
                      decoration: const BoxDecoration(
                        color: Color(0xFFDFB547),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(0),
                        ),
                      ),
                      child: Text(
                        '${state.course.price.toString()} \$',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  void dispose() {
    _courseDetailsBloc.close();
    super.dispose();
  }

  List<Widget> buildStars(int rating, double parentWidth) {
    return List.generate(
      5,
      (index) => Icon(
        index < rating ? Icons.star : Icons.star_border, // نجمة ممتلئة أو فارغة
        color: const Color(0xFFDFB547),
        size: parentWidth * 0.5 * 0.50 * 0.2,
      ),
    );
  }
}
