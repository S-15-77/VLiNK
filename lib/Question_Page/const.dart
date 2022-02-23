import 'package:flutter/material.dart';

Color correct = Color(0xFF32AB58);
Color incorrect = Color(0xFFAB3232);
Color neutral = Color(0xFFF9F9F9);
Color background = Color(0xFF1A3464);

var kElevatedButtonStyle = ElevatedButton.styleFrom(
    fixedSize: Size(307, 58),
    onPrimary: Colors.black,
    primary: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    side: BorderSide(color: Colors.black));
