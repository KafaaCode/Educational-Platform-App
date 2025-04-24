import 'package:educational_platform_app/core/services/services_locator.dart';
import 'package:educational_platform_app/student/src/data/models/models.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/course_details/course_details_bloc.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/select_video_cubit/select_video_cubit.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/lessoneNameCard.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/textstyle.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/youtube_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CourseInformation extends StatefulWidget {
  const CourseInformation({super.key, required this.course});
  final Course course;

  @override
  State<CourseInformation> createState() => _CourseInformationState();
}

class _CourseInformationState extends State<CourseInformation> {
  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    context.read<SelectVideoCubit>().close();
    super.dispose();
  }

  Widget build(BuildContext context) {
    print("course image ${widget.course.imagePath}");
    return MultiBlocProvider(
      providers: [
        BlocProvider<CourseDetailsBloc>(
          create: (context) => CourseDetailsBloc(mainRepository: sl())
            ..add(CourseDetailsEvent.getLessons(courseId: widget.course.id)),
        ),
        BlocProvider<SelectVideoCubit>(
          create: (context) => sl<SelectVideoCubit>(),
        ),
      ],
      child: BlocBuilder<SelectVideoCubit, SelectVideoState>(
        builder: (context, videoState) {
          // اذا fullscreen، رجّع فيديو بالحجم الكامل فقط
          if (videoState.isfullScreen) {
            return Scaffold(
              body: _builderContect(
                YoutubeVideoPlayer(
                  videoUrl: videoState.videos.linkVideo ?? '',
                  initTime: videoState.videos.progress_time,
                  listener: context.read<SelectVideoCubit>().lesenerVideo,
                ),
                width: MediaQuery.of(context).size.width,
                higth: MediaQuery.of(context).size.height,
              ),
            );
          }

          // الوضع العادي
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(100),
              child: AppBar(
                flexibleSpace: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/images/backgroundAppbar.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    color: Theme.of(context).primaryColor.withOpacity(0.8),
                  ),
                  child: const Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'معلومات الدورة',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Cairo',
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.only(
                top: 25,
                right: 20,
                left: 20,
                bottom: 20,
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/images/bg_things.png"),
                        fit: BoxFit.fill,
                      ),
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                    width: double.infinity,
                    height: double.infinity,
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.only(bottom: 80),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildVideoSection(context, videoState),
                          const SizedBox(height: 20),
                          if (!widget.course.is_enrolled)
                            _buildCourseDetails(context),
                          const SizedBox(height: 20),
                          BlocBuilder<CourseDetailsBloc, CourseDetailsState>(
                            builder: (context, state) {
                              if (!state.loading && state.lessons.isNotEmpty) {
                                return LeesonNameCard(
                                    lessons: state.lessons,
                                    isEnrolled: widget.course.is_enrolled);
                              } else if (!state.loading &&
                                  state.lessons.isEmpty) {
                                return const Center(
                                    child: Text('No lessons found.'));
                              } else if (state.loading) {
                                return const Center(
                                    child: CircularProgressIndicator());
                              } else {
                                return Center(
                                    child: SizedBox(
                                        height: 200,
                                        child: Text(
                                            'error: ${state.errorMessage}')));
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (!widget.course.is_enrolled)
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(14),
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'شراء الدورة',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Cairo',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.secondary,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: BlocBuilder<CourseDetailsBloc,
                                    CourseDetailsState>(
                                  builder: (context, state) {
                                    return IconButton(
                                      onPressed: () {
                                        context.read<CourseDetailsBloc>().add(
                                            CourseDetailsEvent.toggleFavorite(
                                                course: state.course));
                                      },
                                      icon: Icon(
                                        state.course.is_favorite
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildVideoSection(BuildContext context, SelectVideoState state) {
    if (state.isLoading) {
      return _builderContect(
        const Center(child: CircularProgressIndicator()),
      );
    } else if (state.isError) {
      return _builderContect(
        const Center(
          child: Text(
            'حدث خطأ أثناء تحميل الفيديو',
            style: TextStyle(
              color: Colors.red,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    } else if (state.videos.linkVideo == null ||
        state.videos.linkVideo!.isEmpty ||
        state.isEmpty) {
      return _builderContect(
        const Center(
          child: Text(
            'لا يوجد فيديو متاح حالياً',
            style: TextStyle(
              fontFamily: 'Cairo',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    }

    return _builderContect(
      YoutubeVideoPlayer(
        videoUrl: state.videos.linkVideo ?? '',
        initTime: state.videos.progress_time,
        listener: context.read<SelectVideoCubit>().lesenerVideo,
      ),
    );
  }

  Widget _buildCourseDetails(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CourseInfoText(
              value: 'اسم الدورة :',
              color:
                  Theme.of(context).textTheme.bodyLarge?.color ?? Colors.grey,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(width: 8),
            CourseInfoText(
              value: widget.course.name,
              color: Theme.of(context).textTheme.bodyMedium?.color ??
                  const Color.fromARGB(255, 90, 89, 87),
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            CourseInfoText(
              value: 'اسم المدرب :',
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(width: 8),
            CourseInfoText(
              value: widget.course.teacher.user?.name ?? '',
              color: const Color.fromARGB(255, 90, 89, 87),
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            CourseInfoText(
              value: 'سعر الدورة :',
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(width: 8),
            CourseInfoText(
              value: widget.course.price.toString(),
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            CourseInfoText(
              value: 'تقييم الدورة  :',
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(width: 8),
            Row(
              children: buildStars(widget.course.evaluationRate.toInt(), 400),
            ),
          ],
        ),
        const SizedBox(height: 20),
        CourseInfoText(
          value: 'وصف الدورة :',
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
        Text(
          widget.course.details,
          softWrap: true,
          overflow: TextOverflow.visible,
          maxLines: null,
          style: const TextStyle(
            color: Colors.grey,
            fontFamily: 'Cairo',
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _builderContect(Widget child,
      {double width = 400, double higth = 200}) {
    return Container(
      width: width,
      height: higth,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        image: DecorationImage(
          opacity: 0.25,
          image: AssetImage('assets/images/bg_intro_page1.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }

  List<Widget> buildStars(int rating, double parentWidth) {
    return List.generate(
      5,
      (index) => Icon(
        index < rating ? Icons.star : Icons.star_border,
        color: const Color(0xFFDFB547),
        size: parentWidth * 0.5 * 0.50 * 0.2,
      ),
    );
  }
}
