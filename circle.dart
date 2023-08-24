import 'dart:math';

class Circle {
  double _radius;

  Circle() : this._radius = 1.0;
  // named constructor
  Circle.withRadius(this._radius);

  set radius(double radius) {
    this._radius = radius;
  }

  double get radius => this._radius;

  double getArea() => pi * pow(_radius, 2);
  double getCircumference() => 2 * pi * _radius;

  @override
  String toString() => 'Circle[radius=$_radius]';
}

void main() {
  var circle = Circle();
  var circleWithRadius = Circle.withRadius(2.5);

  print('Raio do círculo: ${circle.radius}');
  print('Circulo 1: $circle');
  print('Circulo 2: $circleWithRadius');
  print('Raio do círculo: ${circleWithRadius.radius}');
  print('Circunferência do círculo: ${circleWithRadius.getCircumference()}');
  print('Área do círculo: ${circleWithRadius.getArea()}');
}
