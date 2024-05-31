# media_player

<h2 align='center'>Carousal Slider with Custom Indicator</h2>
* To implement a carousel slider in a Flutter app, you can use the popular carousel_slider package. This package provides a highly customizable slider that allows you to display a sequence of widgets (such as images or other content) in a carousel format.

1. Add the Dependency
* First, add the carousel_slider package to your pubspec.yaml file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  carousel_slider: ^4.0.0
```
* Replace ^4.0.0 with the latest version of the package available on pub.dev.

2. Install the Package
* Run the following command in your terminal to install the package:
* ```sh
  flutter pub get
  ```

3. Import the Package
Import the carousel_slider package in the Dart file where you want to use the carousel:
```dart
import 'package:carousel_slider/carousel_slider.dart';
```
5. Create the Carousel Slider
```dart
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CarouselExample(),
    );
  }
}

class CarouselExample extends StatelessWidget {
  final List<String> imgList = [
    'https://via.placeholder.com/600x400/FF0000/FFFFFF?text=Slide1',
    'https://via.placeholder.com/600x400/00FF00/FFFFFF?text=Slide2',
    'https://via.placeholder.com/600x400/0000FF/FFFFFF?text=Slide3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Carousel Slider Example')),
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 400,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
          items: imgList.map((item) => Container(
            child: Center(
              child: Image.network(item, fit: BoxFit.cover, width: 1000),
            ),
          )).toList(),
        ),
      ),
    );
  }
}
```
### ScreenShots

<p align='center'>
  <img src='https://github.com/Aksharpatel06/media_player_task/assets/143181114/b3410619-9ccd-43f9-86d2-a1f900ca1c50' width=240>
  <img src='https://github.com/Aksharpatel06/media_player_task/assets/143181114/b74b0829-1017-4a06-969f-430cbb2211af' width=240>
  <img src='https://github.com/Aksharpatel06/media_player_task/assets/143181114/5352e45b-eb84-4cb3-a569-a61bb392b21b' width=240>
  <img src='https://github.com/Aksharpatel06/media_player_task/assets/143181114/eff42fe2-9885-46c5-971d-7453ab0d609c' width=240>
  <img src='https://github.com/Aksharpatel06/media_player_task/assets/143181114/ec495b23-b89b-4c54-bbac-e7a5817ac087' width=240>
</p>

### Video

https://github.com/Aksharpatel06/media_player_task/assets/143181114/3dd0cf55-3aa3-457c-955d-6f5a24010ce0

