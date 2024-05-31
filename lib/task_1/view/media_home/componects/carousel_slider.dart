import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/global_variable.dart';
import '../../../modal/description_list.dart';
import '../../../provider/slider_provider.dart';

Column carousel_slider_builder(SliderProvider providerFalse) {
  return Column(
    children: [
      const SizedBox(height: 50,),
      CarouselSlider.builder(
        carouselController: buttonCarouselController,
        options: CarouselOptions(
          onPageChanged: (index, reason) =>
              providerFalse.updateIndex(index),
          height: 400,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 200),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          scrollDirection: Axis.horizontal,
        ),
        itemCount: DescriptionList.length,
        itemBuilder:
            (BuildContext context, int itemIndex, int pageViewIndex) =>
            Container(
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage('asset/img/img$itemIndex.jpg'),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 150,
                  child: Text(
                    DescriptionList[itemIndex],
                    textAlign: TextAlign.start,
                    style: GoogleFonts.cinzel(
                      textStyle: const TextStyle(
                        fontSize:18,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
            ),
      ),
      const SizedBox(height: 30,),
    ],
  );
}
