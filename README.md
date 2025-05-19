<div align="center">

[![pub package](https://img.shields.io/pub/v/use_scramble.svg)]() [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) [![Codacy Badge](https://app.codacy.com/project/badge/Grade/50393454533847fb811b82a00f937d16)](https://app.codacy.com/gh/khlebobul/use_scramble/dashboard?utm_source=gh&utm_medium=referral&utm_content=&utm_campaign=Badge_grade)


![Use Scramble GIF Demo](https://github.com/khlebobul/use_scramble/raw/main/screenshots/demo.gif)

Lightweight package for random text animations inspired by [useScramble](https://www.use-scramble.dev)

</div>

## Used by:

- [Board Buddy](https://boardbuddyapp.vercel.app/)
  - [AppStore](https://apps.apple.com/ru/app/board-buddy-score-counter/id6743980638?)
  - [Google Play](https://play.google.com/store/apps/details?id=com.khlebobul.board_buddy)

## Usage

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

## Bugs/Requests

If you encounter any problems feel free to open an issue. If you feel the library is missing a feature, please raise a ticket on Github and I'll look into it. Pull request are also welcome.

## License

MIT License

## Additional information

[Medium article link](https://medium.com/@khlebobul/scramble-effect-for-text-flutter-widget-d92df44dd7a8)

Created by [Gled](https://khlebobul.github.io/) | khlebobul@gmail.com

[![X](https://img.shields.io/badge/X-000?style=for-the-badge&logo=x)](https://x.com/khlebobul) [![Telegram](https://img.shields.io/badge/Telegram-000?style=for-the-badge&logo=telegram&logoColor=2CA5E0)](https://t.me/khlebobul)

Support the project:
- [Telegram Stars](https://t.me/khlebobul_dev)
- [YooMoney](https://yoomoney.ru/to/4100118234947004)

Inspired by [useScramble](https://www.use-scramble.dev)
