## 0.0.12

* Update README and CHANGELOG

## 0.0.11

* Update README

## 0.0.10

- Refactored the `TextScramble` widget:
    - Removed the `style` and `textAlign` properties.
    - Added a required `builder: (BuildContext, String) => Widget` property. This allows users to define their own rendering logic for the displayed text, providing greater flexibility in customizing its appearance. Text styling and alignment should now be implemented within the `builder` function.

```dart
TextScramble(
    text: 'Hello World!',
    speed: Duration(milliseconds: 50),
    chars: '!<>-_\\/[]{}—=+*^?#________',
    correctCharProbability: 0.1, // Correct character probability in [0, 1]
    scrambleCycles: 4, // Number of times to scramble the text
    builder: (context, scrambledText) {
      // Use the builder to define how the text is displayed
      return Text(
        scrambledText,
        textAlign: TextAlign.center, // Text alignment is now within the builder
        style: TextStyle( // Text style is now within the builder
          fontSize: 40,
          color: Colors.green,
          fontFamily: 'JetBrainsMono',
        ),
      );
    },
),
```

This change enhances the widget's flexibility by decoupling the scrambling logic from the text rendering, enabling users to use any widget to display the scrambled text.

Thanks eibaan for the [recommendations](https://www.reddit.com/r/FlutterDev/comments/1kq8s99/comment/mt493hk/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button)

## 0.0.9

* Add "Used by" section

## 0.0.8

* Update example
* Update documentation

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
