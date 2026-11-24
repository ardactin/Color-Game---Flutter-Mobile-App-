import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Renk Oyunu',
      home: GameScreen(),
    );
  }
}

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int score = 0;
  List<Color> colors = [Colors.green, Colors.yellow, Colors.blue];

  void shuffleColors() {
    colors.shuffle(Random());
  }

  void checkColor(Color tappedColor) {
    if (tappedColor == Colors.green) {
      setState(() {
        score++;
      });
    }
    shuffleColors();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Renk Oyunu - Skor: $score'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => checkColor(colors[0]),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: colors[0],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => checkColor(colors[1]),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: colors[1],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => checkColor(colors[2]),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: colors[2],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () => exit(0),
            child: Text('Oyunu Sonlandır'),
          ),
        ],
      ),
    );
  }
}