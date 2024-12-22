import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

class TextScramble extends StatefulWidget {
  final String text;
  final Duration speed;
  final String chars;
  final TextStyle? style;

  const TextScramble({
    super.key,
    required this.text,
    this.speed = const Duration(milliseconds: 50),
    this.chars = '!<>-_\\/[]{}—=+*^?#________',
    this.style,
  });

  @override
  State<TextScramble> createState() => _TextScrambleState();
}

class _TextScrambleState extends State<TextScramble> {
  late String _displayText;
  final Random _random = Random();
  Timer? _timer;
  List<bool> _done = [];

  @override
  void initState() {
    super.initState();
    _displayText = List.filled(widget.text.length, '').join();
    _done = List.filled(widget.text.length, false);
    _startScramble();
  }

  void _startScramble() {
    int counter = 0;
    _timer = Timer.periodic(widget.speed, (timer) {
      // Check if it's time to end the animation
      if (counter >= widget.text.length * 4) {
        timer.cancel();
        setState(() {
          _displayText = widget.text;
        });
        return;
      }

      setState(() {
        _displayText = List.generate(widget.text.length, (index) {
          // If the character is already set, return it
          if (_done[index]) return widget.text[index];

          // With a 10% probability, set the correct character
          if (_random.nextDouble() < 0.1) {
            _done[index] = true;
            return widget.text[index];
          }

          // Otherwise, return a random character
          return widget.chars[_random.nextInt(widget.chars.length)];
        }).join();
      });

      counter++;
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _displayText,
      style: widget.style,
    );
  }
}
