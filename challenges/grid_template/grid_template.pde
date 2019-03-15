// 規則的に整列（2次元）

void setup() {
  size(600, 600);
  noStroke();
  fill(0);
}

void draw() {
  background(255);

  for (int y = 0; y <= height; y += 60) {
    for (int x = 0; x <= width; x += 60) {
      ellipse(x, y, 20, 20);
    }
  }
}
