import 'package:flutter/material.dart';

import 'text_scamble.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: TextScramble(
            text: 'Hello World!',
            speed: const Duration(milliseconds: 50),
            chars: '!<>-_\\/[]{}—=+*^?#________',
            correctCharProbability: 0.1,
            scrambleCycles: 4,
            builder: (context, scrambledText) {
              return Text(
                scrambledText,
                textAlign: TextAlign.center, // textAlign is now part of the builder
                style: const TextStyle( // style is now part of the builder
                  fontSize: 40,
                  color: Colors.green,
                  fontFamily: 'JetBrainsMono',
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
