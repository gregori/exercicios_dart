abstract class Movable {
  void moveUp();
  void moveDown();
  void moveLeft();
  void moveRight();
}

class MovablePoint implements Movable {
  int x;
  int y;
  final int xSpeed;
  final int ySpeed;

  MovablePoint({
    required this.x,
    required this.y,
    required this.xSpeed,
    required this.ySpeed,
  });

  @override
  void moveDown() {
    y -= ySpeed;
  }

  @override
  void moveLeft() {
    x -= xSpeed;
  }

  @override
  void moveRight() {
    x += xSpeed;
  }

  @override
  void moveUp() {
    y += ySpeed;
  }

  @override
  String toString() => '($x,$y),speed=($xSpeed,$ySpeed)';
}

class MovableCircle implements Movable {
  final int radius;
  late MovablePoint center;

  MovableCircle({
    required int x,
    required int y,
    required int xSpeed,
    required int ySpeed,
    required this.radius,
  }) {
    center = MovablePoint(x: x, y: y, xSpeed: xSpeed, ySpeed: ySpeed);
  }

  @override
  void moveDown() {
    center.moveDown();
  }

  @override
  void moveLeft() {
    center.moveLeft();
  }

  @override
  void moveRight() {
    center.moveRight();
  }

  @override
  void moveUp() {
    center.moveUp();
  }

  @override
  String toString() => '${center.toString()},radius=$radius';
}
