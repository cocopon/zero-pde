// 波紋を描く準備

void setup() {
  size(600, 600);
  background(255);
}

void mousePressed() {
  noFill();
  stroke(0);

  ellipse(mouseX, mouseY, 100, 100);
}

void draw() {
}
