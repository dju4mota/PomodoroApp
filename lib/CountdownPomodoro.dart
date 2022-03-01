import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/index.dart';

class CountdownPomodoro extends StatelessWidget {
  CountdownController controller;
  CountdownPomodoro({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 400,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(width: 4),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Countdown(
            countdownController: controller,
            builder: (_, Duration time) {
              return Text(
                '${time.inMinutes}:${time.inSeconds - time.inMinutes * 60}',
                style: const TextStyle(
                  fontSize: 80,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
