import 'package:flame/camera.dart';
import 'package:flame/game.dart';

class FlappyGame extends FlameGame<FlappyWorld> {
   FlappyGame()
    : super(
        world: FlappyWorld(),
        camera: CameraComponent.withFixedResolution(
            width: 600,
            height: 800),
      );
}

class FlappyWorld extends World {}
