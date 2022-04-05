import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_splash_app/constant/constant.dart';
import 'package:video_player/video_player.dart';

class VideoSplashScreen extends StatefulWidget {
  const VideoSplashScreen({Key? key}) : super(key: key);

  @override
  VideoState createState() => VideoState();
}

class VideoState extends State<VideoSplashScreen> {
  VideoPlayerController? playerController;
  VoidCallback? listener;

  @override
  @override
  void initState() {
    super.initState();
    listener = () {
      setState(() {});
    };
    initializeVideo();
    playerController!.play();

    ///video splash display only 5 second you can change the duration according to your need
    startTime();
  }

  startTime() async {
    var _duration = const Duration(seconds: 6);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    playerController!.setVolume(0.0);
    playerController!.removeListener(listener!);
    Navigator.of(context).pushReplacementNamed(homeScreen);
  }

  void initializeVideo() {
    playerController =
        VideoPlayerController.asset('assets/videos/aeologic_logo.mp4')
          ..addListener(listener!)
          ..setVolume(1.0)
          ..initialize()
          ..play();
  }

  @override
  void deactivate() {
    if (playerController != null) {
      playerController!.setVolume(0.0);
      playerController!.removeListener(listener!);
    }
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    if (playerController != null) playerController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(fit: StackFit.expand, children: <Widget>[
      AspectRatio(
          aspectRatio: 9 / 16,
          child: Container(
            child: (playerController != null
                ? VideoPlayer(playerController!)
                : Container()),
          )),
    ]));
  }
}
