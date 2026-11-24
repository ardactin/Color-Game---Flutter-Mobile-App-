# Color Game — Flutter

A small reflex game built with Flutter: three colored squares are shown, and the player scores a point each time they tap the **green** one. The squares shuffle after every tap.

Written to practice `StatefulWidget`, `setState` and gesture handling.

## Features

- Tap the green square to score
- Colors shuffle randomly after each tap
- Live score in the app bar

## Run It

The repository contains the Dart source only, so generate the platform folders once:

```bash
git clone https://github.com/ardactin/Color-Game---Flutter-Mobile-App-.git color_game
cd color_game
flutter create .
flutter run
```

## Code

All logic is in [`lib/main.dart`](lib/main.dart) (~100 lines).
