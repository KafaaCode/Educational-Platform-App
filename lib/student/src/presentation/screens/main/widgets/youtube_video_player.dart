import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVideoPlayer extends StatefulWidget {
  final String videoUrl;
  final Function(YoutubePlayerController controller)? listener;
  final int? initTime;
  const YoutubeVideoPlayer(
      {super.key, required this.videoUrl, this.listener, this.initTime});

  @override
  _YoutubeVideoPlayerState createState() => _YoutubeVideoPlayerState();
}

class _YoutubeVideoPlayerState extends State<YoutubeVideoPlayer> {
  late YoutubePlayerController _controller;
  bool _isLoading = true;
  bool _hasError = false;
  String? _videoId;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  Future<void> _initializePlayer() async {
    try {
      _videoId = extractVideoId(widget.videoUrl);
      if (_videoId == null || _videoId!.isEmpty) {
        throw Exception('رابط يوتيوب غير صالح');
      }
      print("starttttttttt ${widget.initTime}");
      _controller = YoutubePlayerController(
        initialVideoId: _videoId!,
        flags: YoutubePlayerFlags(
          autoPlay: false, // إيقاف التشغيل التلقائي
          mute: false,
          startAt: widget.initTime ?? 0,
          controlsVisibleAtStart: true,
          enableCaption: false,
          disableDragSeek: true,
          forceHD: false,
        ),
      )..addListener(_playerListener);

      setState(() => _isLoading = false);
    } catch (e) {
      setState(() => _hasError = true);
    }
  }

  void _playerListener() {
    if (_controller.value.hasError) {
      setState(() => _hasError = true);
    }
    widget.listener!(_controller);
  }

  Widget _buildPlaceholder() {
    return Container(
      color: Colors.grey[200],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (_videoId != null)
            Image.network(
              'https://img.youtube.com/vi/$_videoId/0.jpg', // عرض الثمبنيل
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
          const SizedBox(height: 16),
          const CircularProgressIndicator(),
          const SizedBox(height: 8),
          const Text('جاري تحميل الفيديو...'),
        ],
      ),
    );
  }

  Widget _buildErrorWidget() {
    return Container(
      color: Colors.red[50],
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, color: Colors.red, size: 40),
          const SizedBox(height: 16),
          const Text('حدث خطأ في تحميل الفيديو', textAlign: TextAlign.center),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => _initializePlayer(),
            child: const Text('إعادة المحاولة'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_hasError) return _buildErrorWidget();
    if (_isLoading) return _buildPlaceholder();

    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.blue,
        progressColors: const ProgressBarColors(
          playedColor: Colors.blue,
          handleColor: Colors.blueAccent,
        ),
        onReady: () {
          _controller.play();
        },
      ),
      builder: (context, player) => player,
    );
  }

  String? extractVideoId(String url) {
    final RegExp regex = RegExp(
      r'(?:youtube\.com\/(?:[^\/]+\/.+\/|(?:v|e(?:mbed)?)\/|.*[?&]v=)|youtu\.be\/)([^"&?\/\s]{11})',
    );
    final match = regex.firstMatch(url);
    return match?.group(1);
  }

  @override
  void dispose() {
    _controller.dispose();
    
    super.dispose();
  }
}
