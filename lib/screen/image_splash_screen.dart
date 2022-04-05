import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_splash_app/constant/constant.dart';

class ImageSplashScreen extends StatefulWidget {
  const ImageSplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<ImageSplashScreen> {
  startTime() async {
    var _duration = const Duration(seconds: 2);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed(homeScreen);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[Image.asset('assets/images/aeologic_logo.png')],
      ),
    );
  }
}
