import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const MaterialApp(home: BallPage()));

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ask me anything',
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.blueAccent.shade700,
        centerTitle: true,
      ),
      backgroundColor: Colors.blue,
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});
  @override
  _Ball createState() {
    return _Ball();
  }
}

class _Ball extends State {
  int ballNumber = 0;
  void changeBallNumber() {
    ballNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: (() => {
                setState(() {
                  changeBallNumber();
                })
              }),
          child: Image.asset('images/ball$ballNumber.png')),
    );
  }
}
