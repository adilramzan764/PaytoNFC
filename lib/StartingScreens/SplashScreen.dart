import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../main.dart';
import 'OnboardScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Add a delay to simulate the splash screen.
    Timer(Duration(seconds: 3), () {
      // Navigate to the next screen after the splash screen is displayed.
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => OnBoardScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0D1548),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset("assets/splash.svg"),
            SizedBox(height: 16.0),
            GradientText(
              'PayTo',
              style: const TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold
              ),
              colors: [
                const Color(0xff3F63FF),
                const Color(0xff4F3FFF),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
