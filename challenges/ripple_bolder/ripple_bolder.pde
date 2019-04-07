// クリック位置に波紋（だんだん太く）

void setup() {
  size(600, 600);
  noFill();

  background(255);
}

void draw() {
}

void mousePressed() {
  for (int i = 0; i < 10; i++) {
    strokeWeight(i * 2);

    float sz = i * 50;
    ellipse(
      mouseX, mouseY,
      sz, sz
    );
  }
}
