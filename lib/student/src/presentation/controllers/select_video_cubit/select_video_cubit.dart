import 'package:educational_platform_app/student/src/data/models/models.dart';
import 'package:educational_platform_app/student/src/domain/repository/main_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

part 'select_video_state.dart';
part 'select_video_cubit.freezed.dart';

class SelectVideoCubit extends HydratedCubit<SelectVideoState> {
  final BaseMainRepository repository;
  SelectVideoCubit({required this.repository})
      : super(const SelectVideoState.initial());

  void selectVideo({
    required Video video,
  }) async {
    emit(
      state.copyWith(
        isLoading: true,
        isError: false,
        isSuccess: false,
      ),
    );
    await Future.delayed(
      const Duration(seconds: 1),
    );
    emit(
      state.copyWith(
        isLoading: false,
        isError: false,
        isEmpty: false,
        isSuccess: true,
        videos: Video(
          id: video.id,
          title: video.title,
          linkVideo: video.linkVideo,
          attached: video.attached,
          message: video.message, 
          size: video.size,
          progress_time: video.progress_time,
        ),
      ),
    );
  }


  int _lastProcessedPosition = -1;
  void lesenerVideo(YoutubePlayerController controller) async {
    emit(state.copyWith(
      isfullScreen: controller.value.isFullScreen,
    ));
    final currentPosition = controller.value.position.inSeconds;
    if (currentPosition % 10 == 0 &&
        currentPosition != _lastProcessedPosition) {
      _lastProcessedPosition = currentPosition;
      print(
          'Player state: ${controller.value.position.inSeconds}'); // Debugging
      final result = await repository.updateProgress(
          videoId: state.videos.id,
          progressTime: controller.value.position.inSeconds,
          size: controller.metadata.duration.inSeconds);
      result.fold((l) {
        print('video erooooooooooooooooooor :${l.message}');
      }, (r) {
        emit(state.copyWith(videoTime: r));
      });
    }
    if (controller.value.position.inSeconds ==
        controller.metadata.duration.inSeconds) {
      print("end ");

    }
  }

  @override
  SelectVideoState? fromJson(Map<String, dynamic> json) {
    return const SelectVideoState.initial();
  }

  @override
  Map<String, dynamic>? toJson(SelectVideoState state) {
    return null;
  }
}
