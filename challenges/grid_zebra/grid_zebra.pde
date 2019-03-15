// 規則的に整列（2次元、しまうま）

void setup() {
  size(600, 600);
  noStroke();
  fill(0);
}

void draw() {
  background(200);

  for (int y = 0; y <= height; y += 60) {
    for (int x = 0; x <= width; x += 60) {
      // セルのX座標によって塗り色を切り替える
      if (x >= 0 && x < 100) {
        fill(255);
      }
      else if (x >= 100 && x < 200) {
        fill(0);
      }
      else if (x >= 200 && x < 300) {
        fill(255);
      }
      else if (x >= 300 && x < 400) {
        fill(0);
      }
      else if (x >= 400 && x < 500) {
        fill(255);
      }
      else {
        fill(0);
      }

      ellipse(x, y, 20, 20);
    }
  }
}
