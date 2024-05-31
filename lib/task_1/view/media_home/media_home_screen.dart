import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:media_player_example/task_1/modal/gradient_list.dart';
import 'package:media_player_example/task_1/provider/slider_provider.dart';
import 'package:provider/provider.dart';

import 'componects/carousel_slider.dart';
import 'componects/feed_message.dart';
import 'componects/slider_indicator.dart';

class MediaHomeScreen extends StatelessWidget {
  const MediaHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final providerTrue = Provider.of<SliderProvider>(context);
    final providerFalse = Provider.of<SliderProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.search),
        title: Text(
          'ADIVA',
          style: GoogleFonts.permanentMarker(),
        ),
        actions: const [
          Icon(Icons.menu),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: gradientList[providerTrue.currentIndex],
          ),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    // CAROUSEL SLIDER
                    carousel_slider_builder(providerFalse),

                    // SLIDER INDICATORS
                    slider_indeicators(providerTrue),
                  ],
                ),
              ),
              // MESSAGE
              feed_message()
            ],
          ),
        ),
      ),
    );
  }
}
