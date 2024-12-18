import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:project_1/game/Game_1/flappy_game.dart';

class MyGame extends StatefulWidget {
  const MyGame({super.key});

  @override
  State<MyGame> createState() => _MyGameState();
}

class _MyGameState extends State<MyGame> {
  late FlappyGame flappyGame;

  @override
  void initState() {
    // TODO: implement initState
    flappyGame = FlappyGame();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(child: GameWidget(game: flappyGame)));
  }
}
