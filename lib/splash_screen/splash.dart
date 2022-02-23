import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:project_app/Home_Page/HomePage.dart';
import 'package:project_app/Question_Page/Result_Pie.dart';
import 'package:project_app/Question_Page/question_model.dart';
import 'package:project_app/Question_Page/question_views.dart';
import 'package:project_app/Question_Page/widgets/Question_overview.dart';
import 'package:project_app/onboarding/onBoarding_page.dart';
import 'package:project_app/test_file/timer.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
          splash: Image.asset('assests/images/logo.png'),
          nextScreen: QuestionViews()),
    );
  }
}
