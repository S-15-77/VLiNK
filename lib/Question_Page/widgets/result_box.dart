import 'package:flutter/material.dart';
import 'package:project_app/Question_Page/const.dart';

class ResultBox extends StatelessWidget {
  const ResultBox(
      {Key? key,
      required this.result,
      required this.questionLength,
      required this.onPressed})
      : super(key: key);
  final int result;
  final int questionLength;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: background,
      content: Padding(
        padding: EdgeInsets.all(60),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Scored",
              style: TextStyle(color: neutral, fontSize: 22.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            CircleAvatar(
              child: Text('$result/$questionLength'),
              radius: 60.0,
              backgroundColor: result == questionLength / 2
                  ? Colors.yellow
                  : result < questionLength / 2
                      ? incorrect
                      : correct,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              result == questionLength / 2
                  ? "Almost THere"
                  : result < questionLength / 2
                      ? "Try Again"
                      : "Great",
              style: TextStyle(color: neutral),
            ),
            SizedBox(
              height: 25.0,
            ),
            GestureDetector(
              onTap: onPressed,
              child: Text(
                'Start Over',
                style: TextStyle(
                    color: Colors.blue, fontSize: 20.0, letterSpacing: 1.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
