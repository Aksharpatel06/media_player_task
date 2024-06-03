# media_player

<h2 align='center'>Carousal Slider with Custom Indicator</h2>


* To implement a carousel slider in a Flutter app, you can use the popular carousel_slider package. This package provides a highly customizable slider that allows you to display a sequence of widgets (such as images or other content) in a carousel format.


### 1. Add the Dependency
* First, add the carousel_slider package to your pubspec.yaml file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  carousel_slider: ^4.0.0
```
* Replace ^4.0.0 with the latest version of the package available on pub.dev.

### 2. Install the Package
* Run the following command in your terminal to install the package:
* ```sh
  flutter pub get
  ```

### 3. Import the Package
Import the carousel_slider package in the Dart file where you want to use the carousel:
```dart
import 'package:carousel_slider/carousel_slider.dart';
```

### 4. Create the Carousel Slider
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

<h2 align='center'>Parallax Effect in Flutter</h2>
* Creating a parallax effect in Flutter can add a dynamic and visually appealing aspect to your app. A parallax effect involves elements in the foreground and background moving at different speeds, creating a sense of depth. Here's a simple example of how to implement a parallax effect in Flutter using the `ListView` widget and `Transform` widget.

### Step-by-Step Implementation:

1. **Set up your Flutter project:**
   Make sure you have Flutter installed and set up on your machine. Create a new Flutter project if you don't have one already.

   ```sh
   flutter create parallax_effect
   cd parallax_effect
   ```

2. **Modify `pubspec.yaml`:**
   Add any required assets (e.g., images) to your project. Ensure they are correctly listed in the `pubspec.yaml` file under the `assets` section.

   ```yaml
   flutter:
     assets:
       - assets/background.jpg
       - assets/foreground.png
   ```

3. **Implement the Parallax Effect:**
   Edit the `lib/main.dart` file to include the parallax effect.

   ```dart
   import 'package:flutter/material.dart';

   void main() {
     runApp(MyApp());
   }

   class MyApp extends StatelessWidget {
     @override
     Widget build(BuildContext context) {
       return MaterialApp(
         title: 'Parallax Effect',
         theme: ThemeData(
           primarySwatch: Colors.blue,
         ),
         home: ParallaxDemo(),
       );
     }
   }

   class ParallaxDemo extends StatelessWidget {
     @override
     Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           title: Text('Parallax Effect'),
         ),
         body: ParallaxListView(),
       );
     }
   }

   class ParallaxListView extends StatelessWidget {
     @override
     Widget build(BuildContext context) {
       return ListView.builder(
         itemCount: 10,
         itemBuilder: (context, index) {
           return ParallaxItem(index: index);
         },
       );
     }
   }

   class ParallaxItem extends StatelessWidget {
     final int index;

     ParallaxItem({required this.index});

     @override
     Widget build(BuildContext context) {
       return Container(
         height: 200,
         child: Stack(
           children: [
             Positioned.fill(
               child: Image.asset(
                 'assets/background.jpg',
                 fit: BoxFit.cover,
                 alignment: Alignment(-0.5 + index * 0.1, 0),
               ),
             ),
             Positioned.fill(
               child: Align(
                 alignment: Alignment.center,
                 child: Transform.translate(
                   offset: Offset(0, -index * 10.0),
                   child: Image.asset('assets/foreground.png'),
                 ),
               ),
             ),
             Center(
               child: Text(
                 'Item $index',
                 style: TextStyle(fontSize: 24, color: Colors.white),
               ),
             ),
           ],
         ),
       );
     }
   }
   ```

### Explanation:

1. **Main Application:**
   - The `MyApp` class sets up the application with a `ParallaxDemo` home screen.

2. **ParallaxDemo Screen:**
   - The `ParallaxDemo` widget is a simple `Scaffold` with an `AppBar` and a `ParallaxListView` as the body.

3. **ParallaxListView:**
   - The `ParallaxListView` widget uses a `ListView.builder` to create a scrollable list of `ParallaxItem` widgets.

4. **ParallaxItem:**
   - Each `ParallaxItem` widget is a `Container` with a fixed height.
   - The `Stack` widget is used to layer the background image, the foreground image, and the text.
   - The background image is positioned to create a parallax effect by adjusting the alignment based on the item index.
   - The foreground image uses a `Transform.translate` to create a parallax effect by shifting its position based on the item index.
   - The `Center` widget is used to overlay text on top of the images.

### ScreenShots

<p align='center'>
  <img src='https://github.com/Aksharpatel06/media_player_task/assets/143181114/47b81f14-9b83-4874-8b20-88a428b704cd' width=240>
  <img src='https://github.com/Aksharpatel06/media_player_task/assets/143181114/1360248f-42b9-496d-ba83-12c91b019926' width=240>
  <img src='https://github.com/Aksharpatel06/media_player_task/assets/143181114/0a4e1cbc-6cd9-41de-8f56-d7f8e70f838d' width=240>
  <img src='https://github.com/Aksharpatel06/media_player_task/assets/143181114/b7ef0197-e759-44da-b80c-530f4b87c98b' width=240>
  <img src='https://github.com/Aksharpatel06/media_player_task/assets/143181114/a6d6f83d-3356-4ac7-9971-857a9fe84991' width=240>
  <img src='https://github.com/Aksharpatel06/media_player_task/assets/143181114/da85d6d7-b030-4503-9623-66f59fcd7089' width=240>
</p>

### video

https://github.com/Aksharpatel06/media_player_task/assets/143181114/419d2030-b6b3-4b54-b424-9dbc893a22f6
