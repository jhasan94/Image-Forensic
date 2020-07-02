import 'dart:async';

import 'package:flutter/material.dart';
import 'package:police_img_proces/sign_up_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 4);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SignUpPage()));
  }

  initScreen(BuildContext context) {
    return Container(
      //backgroundColor: Colors.blueAccent,
      child: Container(
        //background image set
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/Splash.png"),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}