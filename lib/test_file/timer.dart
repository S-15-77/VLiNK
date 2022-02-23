import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

class MyTimer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TimerCountdown(
              format: CountDownTimerFormat.daysHoursMinutesSeconds,
              endTime: DateTime.now().add(
                Duration(
                  days: 5,
                  hours: 14,
                  minutes: 27,
                  seconds: 34,
                ),
              ),
              onEnd: () {
                print("Timer finished");
              },
            ),
            ElevatedButton(onPressed: () {}, child: Text("Button"))
          ],
        ),
      ),
    );
  }
}
