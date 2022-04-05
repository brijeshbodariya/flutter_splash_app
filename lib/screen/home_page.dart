import 'package:flutter/material.dart';
import 'package:flutter_splash_app/constant/constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
        /* appBar: AppBar(
          title: new Text("Home Page"),
        ),*/
        backgroundColor: Colors.white,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              children: const <Widget>[
                SizedBox(height: 70.0),
                SizedBox(
                  height: 0.0,
                  child: Text(
                    "Home Page",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0.0),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(7)),
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xFFDADADA)),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(videoSplash);
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/video.png',
                        height: 40.0,
                        width: 40.0,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Video Splash   ",
                          style: TextStyle(
                            color: Color(0xFF292929),
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 0.0, right: 0.0, top: 30.0, bottom: 0.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0.0),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                      ),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(7)),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFFDADADA)),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(imageSplash);
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset('assets/images/image.png',
                            height: 40.0, width: 40.0),
                        const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Image Splash   ",
                            style: TextStyle(
                              color: Color(0xFF292929),
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 0.0, right: 0.0, top: 30.0, bottom: 0.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0.0),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                      ),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(7)),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFFDADADA)),
                    ),
                    onPressed: () async {
                      Navigator.of(context)
                          .pushReplacementNamed(animatedSplash);
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset(
                          'assets/images/animation.png',
                          height: 40.0,
                          width: 40.0,
                        ),
                        const Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text(
                              "Animated Splash",
                              style: TextStyle(
                                  color: Color(0xFF292929),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0),
                            ))
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
