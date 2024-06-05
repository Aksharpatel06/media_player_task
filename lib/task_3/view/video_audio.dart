import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoAudioScreen extends StatefulWidget {
  const VideoAudioScreen({super.key});

  @override
  State<VideoAudioScreen> createState() => _VideoAudioScreenState();
}

class _VideoAudioScreenState extends State<VideoAudioScreen> {
  late VideoPlayerController videoPlayerController;
  late VideoPlayerController controller;
  late ChewieController chewieController;

  @override
  void initState() {
    videoPlayerController = VideoPlayerController.asset('asset/video/BigBuckBunny.mp4');
    videoPlayerController.initialize().then((value) => setState(() {}));

    controller = VideoPlayerController.asset('asset/video/BigBuckBunny.mp4');
    controller.initialize().then((value) => setState(() {}));

    chewieController = ChewieController(videoPlayerController: controller);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video And Audio'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: videoPlayerController.value.aspectRatio,
                  child: VideoPlayer(
                    videoPlayerController,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                AspectRatio(
                  aspectRatio: controller.value.aspectRatio,
                  child: Chewie(
                    controller: chewieController,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
              onPressed: () {
                setState(() {
                  videoPlayerController.pause();
                });
              },
              child: const Icon(Icons.pause)),
          FloatingActionButton(
              onPressed: () {
                setState(() {
                  videoPlayerController.play();
                });
              },
              child: const Icon(Icons.play_arrow)),
        ],
      ),
    );
  }
}
