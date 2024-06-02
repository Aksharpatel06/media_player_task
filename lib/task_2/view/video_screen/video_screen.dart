import 'package:flutter/material.dart';

import '../../modal/video_list.dart';
import 'componects/video_card.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late PageController _pageController;

  int _selectedIndex=0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: height*0.7,
            child: PageView.builder(
              itemCount: videos.length,
              controller: _pageController,
              itemBuilder: (context, index) {
                return VideoCard(assetPath: videos[index],isSelected: _selectedIndex==index,);
              },
              onPageChanged: (value) {
                setState(() {
                  _selectedIndex=value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

