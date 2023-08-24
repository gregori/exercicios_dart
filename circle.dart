import 'dart:math';

import 'shape.dart';

class Circle extends Shape {
  double _radius;

  Circle() : this._radius = 1.0;
  // named constructor
  Circle.withRadius(this._radius);
  Circle.withRadiusColorFilled(this._radius, String color, bool filled)
      : super.withColorAndFilled(color, filled);

  set radius(double radius) {
    this._radius = radius;
  }

  double get radius => this._radius;

  double getArea() => pi * pow(_radius, 2);
  double getCircumference() => 2 * pi * _radius;

  @override
  String toString() => 'Circle[${super.toString()},radius=$_radius]';
}

void main() {
  var circle = Circle();
  var circleWithRadius = Circle.withRadius(2.5);
  var circle3 = Circle.withRadiusColorFilled(3, 'blue', false);

  print('Circulo 1: $circle');
  print('Circulo 2: $circleWithRadius');
  print('Circulo 2: $circle3');
  print('Circunferência do círculo: ${circleWithRadius.getCircumference()}');
  print('Área do círculo: ${circleWithRadius.getArea()}');
}
