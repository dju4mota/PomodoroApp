import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Timer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Flutter Demo',
      theme: CupertinoThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 207, 209, 208),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Enjoy making plans\n and stay focused!",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                )),
            SizedBox(
              height: 15,
            ),
            ArrowButton(),
          ],
        ),
      ),
    );
  }
}

class ArrowButton extends StatelessWidget {
  const ArrowButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: const EdgeInsets.all(0),
      onPressed: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => Timer(),
          ),
        );
      },
      child: const Icon(
        Icons.arrow_forward,
        color: Colors.black,
      ),
      color: Colors.white,
      borderRadius: BorderRadius.circular(50),
    );
  }
}
