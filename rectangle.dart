import 'shape.dart';

class Rectangle extends Shape {
  double _length;
  double _width;

  Rectangle()
      : this._length = 1.0,
        this._width = 1.0;

  Rectangle.withLenghAndWidth(
    this._length,
    this._width,
  );

  Rectangle.withLenghWidthColorFilled(
    this._length,
    this._width,
    String color,
    bool filled,
  ) : super.withColorAndFilled(color, filled);

  double get width => _width;
  double get length => _length;

  set width(double width) {
    this._width = width;
  }

  set length(double length) {
    this._length = length;
  }

  double getArea() => width * length;
  double getPerimeter() => 2 * width + 2 * length;

  @override
  String toString() {
    return 'Rectangle[${super.toString()},length=$length,width=$width]';
  }
}

void main() {
  var r1 = Rectangle();
  var r2 = Rectangle.withLenghAndWidth(2, 3);
  var r3 = Rectangle.withLenghWidthColorFilled(1.5, 3.2, 'yellow', false);
  print(r1);
  print(r2);
  print(r3);
  r3.length = 9;
  print(r3);

  print('R1: Área: ${r1.getArea()}, Perímetro: ${r1.getPerimeter()}');
  print('R2: Área: ${r2.getArea()}, Perímetro: ${r2.getPerimeter()}');
}
