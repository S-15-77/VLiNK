import 'package:flutter/material.dart';

class AllClasses extends StatefulWidget {
  const AllClasses({Key? key}) : super(key: key);

  @override
  _AllClassesState createState() => _AllClassesState();
}

class _AllClassesState extends State<AllClasses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("AllCLasses"),
        ),
      ),
    );
    ;
  }
}
