class Shape {
  String color;
  bool filled;

  Shape()
      : this.color = 'red',
        this.filled = true;

  Shape.withColorAndFilled(this.color, this.filled);

  @override
  String toString() => 'Shape[color=$color,filled=$filled]';
}
