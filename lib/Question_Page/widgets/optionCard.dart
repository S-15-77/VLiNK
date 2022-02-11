import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  const OptionCard({Key? key, required this.option, required this.color})
      : super(key: key);

  final String option;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 58,
        width: 307,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(7.0)),
            border: Border.all(color: Colors.black)),
        child: ListTile(
          title: Text(
            option,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22.0, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
