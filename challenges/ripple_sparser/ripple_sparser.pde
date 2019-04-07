// クリック位置に波紋（だんだん広く）

void setup() {
  size(600, 600);
  noFill();

  background(255);
}

void draw() {
}

void mousePressed() {
  for (int i = 0; i < 10; i++) {
    float sz = i * i * 10;
    ellipse(
      mouseX, mouseY,
      sz, sz
    );
  }
}
