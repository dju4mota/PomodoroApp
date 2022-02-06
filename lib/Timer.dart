import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Timer extends StatefulWidget {
  @override
  _TimerState createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  DateTime timer = DateTime.now();

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
            SizedBox(
              height: 300,
              width: 400,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(width: 4),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text('${timer.minute}:${timer.second}',
                      style: const TextStyle(
                        fontSize: 80,
                      )),
                ),
              ),
            ),
            CupertinoButton(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 2),
              borderRadius: const BorderRadius.all(Radius.elliptical(50, 50)),
              child: const Text("Start Pomodoro",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  )),
              onPressed: () {},
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
