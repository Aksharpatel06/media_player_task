import 'package:flutter/material.dart';

import '../../../provider/slider_provider.dart';

Row slider_indeicators(SliderProvider providerTrue) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: List.generate(
      5,
          (index) => index == providerTrue.currentIndex
          ? Container(
        height: 8,
        width: 40,
        margin: const EdgeInsets.symmetric(horizontal: 7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black, width: 1.2),

        ),
      )
          : Container(
        height: 8,
        width: 8,
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
        ),
      ),
    ),
  );
}
