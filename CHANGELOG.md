## 0.0.7

* Add `textAlign` parameter

```dart
TextScramble(
    text: 'Hello World!',
    speed: Duration(milliseconds: 50),
    chars: '!<>-_\\/[]{}—=+*^?#________',
    correctCharProbability: 0.1, // Correct character probability in [0, 1]
    scrambleCycles: 4, // Number of times to scramble the text
    textAlign: TextAlign.center, // Optional text alignment
    style: TextStyle(
            fontSize: 40,
            color: Colors.green,
            fontFamily: 'JetBrainsMono',
    ),
),
```

## 0.0.6

* Add support options

## 0.0.5

* Update example

## 0.0.4

* Add `correctCharProbability` and `scrambleCycles` parameters

## 0.0.3

* Add [Medium article](https://medium.com/@khlebobul/scramble-effect-for-text-flutter-widget-d92df44dd7a8)

## 0.0.2

* Update example
* Add codacy badge

## 0.0.1

* Initial release
