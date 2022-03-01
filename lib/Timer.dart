import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/index.dart';
import 'package:pomodoro/CupertinoButtonPomodoro.dart';

import 'CountdownPomodoro.dart';

class Timer extends StatefulWidget {
  @override
  _TimerState createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  late CountdownController controller;
  late CupertinoButtonPomodoro button;

  @override
  void initState() {
    super.initState();
    controller = CountdownController(duration: const Duration(minutes: 25), onEnd: onEnd);
    button = CupertinoButtonPomodoro(controller: controller);
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("Stay Focused",
                style: TextStyle(
                  fontSize: 40,
                )),
            CountdownPomodoro(controller: controller),
            button,
          ],
        ),
      ),
    );
  }

  void onEnd() {
    print('onEnd');
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
