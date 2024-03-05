import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoBackground extends StatefulWidget {
  const VideoBackground({super.key});

  @override
  State<VideoBackground> createState() => _VideoBackgroundState();
}

class _VideoBackgroundState extends State<VideoBackground> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        VideoPlayerController.asset('assets/videos/welcome_background.mp4')
          ..setVolume(0)
          ..setLooping(true)
          ..play();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _controller.initialize(),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return Image.asset(
              'assets/images/static_background.png',
              fit: BoxFit.cover,
            );
          }

          return VideoPlayer(_controller);
        });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
