import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
<<<<<<< Updated upstream
import 'package:project_app/onboarding/onboarding1.dart';
import 'package:project_app/onboarding/onboarding3.dart';
import 'package:project_app/onboarding/onboarding2.dart';
=======
import 'package:project_app/Home_Page/HomePage.dart';
import 'package:project_app/Question_Page/question_views.dart';
import 'package:project_app/onboarding/onBoarding_page.dart';
>>>>>>> Stashed changes

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
          splash: Image.asset('assests/images/logo.png'),
          nextScreen: OnBoarding1()),
    );
  }
}
