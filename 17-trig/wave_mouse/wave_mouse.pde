// 波を重ね描き（ドラッグすると波長と振幅が変わる）

void setup() {
  size(600, 600);
  noStroke();

  background(255);
}

void draw() {
}

void mouseDragged() {
  fill(0, 20);

  for (int x = 0; x < width; x += 1) {
    float y = height / 2 + sin((x + mouseX) * 0.01) * mouseY;
    rect(x, y, 1, 1);
  }
}
