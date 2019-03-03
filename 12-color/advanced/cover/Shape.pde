class Shape {
  PVector pos;
  float radius;
  color col;

  Shape() {
    pos = new PVector();
  }

  void draw() {
    fill(col);
    ellipse(
      pos.x, pos.y,
      radius * 2, radius * 2
    );
  }
}
