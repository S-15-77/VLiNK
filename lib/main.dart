import 'package:flutter/material.dart';
import 'package:project_app/InformationInput/provider.dart';
import 'package:project_app/Question_Page/dbConnect.dart';
import 'package:project_app/Question_Page/widgets/Question_overview.dart';
import 'package:project_app/splash_screen/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

// @dart=2.9

void main() {
  DBConnect().fetchQuestions();
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => addValues(),
    )
  ], child: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}
