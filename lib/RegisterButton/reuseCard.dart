import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ReuseCard extends StatelessWidget {
  ReuseCard(
      {required this.colour, required this.cardChild, required this.onPress});

  final Color colour;
  final Widget cardChild;
  final Function() onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        //margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          border: Border.all(width: 5),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          color: colour,
        ),
      ),
    );
  }
}
