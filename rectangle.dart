class Rectangle {
  double _length;
  double _width;

  Rectangle()
      : this._length = 1.0,
        this._width = 1.0;

  Rectangle.withLenghAndWidth(
    this._length,
    this._width,
  );

  double get width => _width;
  double get length => _length;

  set width(double width) {
    this.width = width;
  }

  set length(double length) {
    this.length = length;
  }

  double getArea() => width * length;
  double getPerimeter() => 2 * width + 2 * length;

  @override
  String toString() {
    return 'Rectangle[length=$length,width=$width]';
  }
}

void main() {
  var r1 = Rectangle();
  var r2 = Rectangle.withLenghAndWidth(2, 3);
  print(r1);
  print(r2);
  print('R1: Área: ${r1.getArea()}, Perímetro: ${r1.getPerimeter()}');
  print('R2: Área: ${r2.getArea()}, Perímetro: ${r2.getPerimeter()}');
}
