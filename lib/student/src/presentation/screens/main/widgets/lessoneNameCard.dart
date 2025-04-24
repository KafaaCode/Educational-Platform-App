import 'package:educational_platform_app/core/utils/toast.dart';
import 'package:educational_platform_app/student/src/data/models/models.dart';
import 'package:educational_platform_app/student/src/presentation/controllers/select_video_cubit/select_video_cubit.dart';
import 'package:educational_platform_app/student/src/presentation/screens/main/widgets/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LeesonNameCard extends StatefulWidget {
  final List<Lesson> lessons;
  final bool isEnrolled;
  int? selectedIndex;

  LeesonNameCard({
    super.key,
    required this.isEnrolled,
    required this.lessons,
  });

  @override
  State<LeesonNameCard> createState() => _LeesonNameCardState();
}

class _LeesonNameCardState extends State<LeesonNameCard> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.lessons.length,
      itemBuilder: (context, index) {
        final lesson = widget.lessons[index];
        final isExpanded = widget.selectedIndex == index;

        return GestureDetector(
          onTap: () {
            //  widget.onLessonPressed(index)
            setState(() {
              if (isExpanded) {
                widget.selectedIndex = null;
              } else {
                widget.selectedIndex = index;
              }
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            decoration: BoxDecoration(
              color: theme.cardColor,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: const Offset(1, 1),
                  color: theme.shadowColor.withOpacity(0.05),
                ),
              ],
            ),
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            lesson.name,
                            style: TextStyle(
                              color: theme.textTheme.bodyLarge?.color ??
                                  Colors.black,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              CourseInfoText(
                                value: '${lesson.videos.length} درس',
                                color: theme.textTheme.bodyMedium?.color ??
                                    Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                              const SizedBox(width: 14),
                              CourseInfoText(
                                value: '8 ساعات',
                                color: theme.textTheme.bodyMedium?.color ??
                                    Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    AnimatedRotation(
                      duration: const Duration(milliseconds: 300),
                      turns: isExpanded ? 0.25 : 0,
                      child: const Icon(
                        Icons.chevron_right,
                        color: Color(0xFFdfb547),
                        size: 32,
                      ),
                    ),
                  ],
                ),
                if (isExpanded)
                  _buildVideosList(lesson.videos.whereType<Video>().toList(),
                      widget.isEnrolled),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildVideosList(List<Video> videos, isEnrolled) {
    return BlocBuilder<SelectVideoCubit, SelectVideoState>(
      builder: (context, state) {
        ThemeData theme = Theme.of(context);
        print("----------list video----------");
        print(state);
        return Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Column(
            children: [
              const Divider(height: 1),
              videos.length != 0
                  ? ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: videos.length,
                      separatorBuilder: (_, __) => const Divider(height: 1),
                      itemBuilder: (context, index) {
                        final video = videos[index];
                        print('--------------------------');
                        print("video id : ${video}");
                        print('--------------------------');
                        return GestureDetector(
                          onTap: isEnrolled
                              ? () {
                                  context.read<SelectVideoCubit>().selectVideo(
                                        video: video,
                                      );
                                }
                              : () {
                                  Toast().error(
                                      context, 'انت غير مشترك في الدورة');
                                },
                          child: ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: const Icon(Icons.play_circle_outline,
                                color: Colors.amber),
                            title: Text(video.title,
                                style: theme.textTheme.bodySmall),
                            trailing: const Text(
                              '10 دقيقة',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  : Center(
                      child: Text(
                        'لا توجد مقاطع فيديو',
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: theme.textTheme.bodyMedium?.color ??
                              Colors.grey[600],
                        ),
                      ),
                    ),
            ],
          ),
        );
      },
    );
  }
}
