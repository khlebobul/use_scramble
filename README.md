<div align="center">

[![LICENCE - MIT](https://img.shields.io/badge/LICENCE-MIT-F4F0D9?style=for-the-badge&logo=Licence&logoColor=F4F0D9)](https://github.com/khlebobul/use_scramble/blob/main/LICENSE) [![pub package](https://img.shields.io/pub/v/use_scramble.svg?style=for-the-badge&color=F4F0D9)](https://pub.dartlang.org/packages/use_scramble)


![Use Scramble GIF Demo](https://github.com/khlebobul/use_scramble/raw/main/screenshots/demo.gif)

Lightweight package for random text animations inspired by [useScramble](https://www.use-scramble.dev)

</div>

## Used by

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

## Additional information

[Medium article link](https://medium.com/@khlebobul/scramble-effect-for-text-flutter-widget-d92df44dd7a8)

Created by [Gleb](https://khlebobul.github.io/) | khlebobul@gmail.com

[![X](https://img.shields.io/badge/X-000?style=for-the-badge&logo=x)](https://x.com/khlebobul) [![Telegram](https://img.shields.io/badge/Telegram-000?style=for-the-badge&logo=telegram&logoColor=2CA5E0)](https://t.me/khlebobul)

Support the project:
- [Telegram Stars](https://t.me/khlebobul_dev)
- [YooMoney](https://yoomoney.ru/to/4100118234947004)

## Credits

- Inspired by [useScramble](https://www.use-scramble.dev)
- Thanks eibaan for the [recommendations](https://www.reddit.com/r/FlutterDev/comments/1kq8s99/comment/mt493hk/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button)
