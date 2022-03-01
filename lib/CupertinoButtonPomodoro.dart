import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/countdown_controller.dart';

class CupertinoButtonPomodoro extends StatelessWidget {
  CountdownController controller;
  CupertinoButtonPomodoro({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 2),
      borderRadius: const BorderRadius.all(Radius.elliptical(50, 50)),
      child: const Text("Start Pomodoro",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          )),
      onPressed: () {
        controller.start();
      },
      color: Colors.white,
    );
  }
}
