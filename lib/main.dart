import 'package:flutter/material.dart';
import 'package:flutter_splash_app/Constant/Constant.dart';
import 'package:flutter_splash_app/Screen/animated_splash_screen.dart';
import 'package:flutter_splash_app/Screen/home_page.dart';
import 'package:flutter_splash_app/Screen/image_splash_screen.dart';
import 'package:flutter_splash_app/Screen/video_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterSplashDemo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: const AnimatedSplashScreen(),
      routes: <String, WidgetBuilder>{
        homeScreen: (BuildContext context) => const HomeScreen(),
        videoSplash: (BuildContext context) => const VideoSplashScreen(),
        imageSplash: (BuildContext context) => const ImageSplashScreen(),
        animatedSplash: (BuildContext context) => const AnimatedSplashScreen()
      },
    );
  }
}
