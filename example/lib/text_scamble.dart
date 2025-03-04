import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

/// A Flutter widget that displays text with a "hacker-style" scramble effect.
/// The text gradually reveals itself over several animation cycles, starting
/// as random characters and resolving into the target text.
class TextScramble extends StatefulWidget {
  /// The final text to display after the animation completes.
  final String text;

  /// Speed of each frame update during the scrambling animation.
  /// Defaults to 50 milliseconds.
  final Duration speed;

  /// Characters to use for random scrambled characters.
  final String chars;

  /// Optional text style to apply to the displayed text.
  final TextStyle? style;

  /// Probability (between 0 and 1) that each character will be revealed
  /// correctly on each frame.
  final double correctCharProbability;

  /// Number of full scramble cycles before the final text is displayed.
  final int scrambleCycles;

  /// Optional text alignment for the displayed text.
  final TextAlign? textAlign;

  /// Creates a `TextScramble` widget.
  const TextScramble({
    super.key,
    required this.text,
    this.speed = const Duration(milliseconds: 50),
    this.chars = '!<>-_\\/[]{}—=+*^?#________',
    this.style,
    this.correctCharProbability = 0.1,
    this.scrambleCycles = 4,
    this.textAlign,
  });

  @override
  State<TextScramble> createState() => _TextScrambleState();
}

/// State class for the `TextScramble` widget.
/// Handles the animation and random character generation.
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

  /// Starts the text scrambling animation.
  void _startScramble() {
    int counter = 0;
    _timer = Timer.periodic(widget.speed, (timer) {
      if (counter >= widget.text.length * widget.scrambleCycles) {
        timer.cancel();
        setState(() {
          _displayText = widget.text;
        });
        return;
      }

      setState(() {
        _displayText = List.generate(widget.text.length, (index) {
          if (_done[index]) return widget.text[index];
          if (_random.nextDouble() < widget.correctCharProbability) {
            _done[index] = true;
            return widget.text[index];
          }
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
      textAlign: widget.textAlign,
    );
  }
}
