import 'package:flutter/material.dart';
import 'package:use_scramble/use_scramble.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: TextScramble(
            text: 'Hello World!',
            speed: Duration(milliseconds: 50),
            chars: '!<>-_\\/[]{}—=+*^?#________',
            correctCharProbability = 0.1, // Correct character probability in [0, 1]
            scrambleCycles = 4, // Number of times to scramble the text
            style: TextStyle(
              fontSize: 40,
              color: Colors.green,
              fontFamily: 'JetBrainsMono',
            ),
          ),
        ),
      ),
    );
  }
}
