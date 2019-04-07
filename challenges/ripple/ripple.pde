// クリック位置に波紋

void setup() {
  size(600, 600);
  noFill();

  background(255);
}

void draw() {
}

void mousePressed() {
  for (int i = 0; i < 10; i++) {
    float sz = i * 50;
    ellipse(
      mouseX, mouseY,
      sz, sz
    );
  }
}
