import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:project_app/onboarding/onBoarding_page.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
          splash: Image.asset('assests/images/logo.png'),
          nextScreen: OnBoardingPage()),
    );
  }
}
