import 'package:flutter/material.dart';
import 'package:media_player_example/task_1/provider/slider_provider.dart';
import 'package:media_player_example/task_3/view/video_audio.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => SliderProvider(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VideoAudioScreen(),
    );
  }
}
