// XYを入れ替えてみたペン

void setup() {
  size(600, 600);
  background(255, 255, 255);
  
  noStroke();
}

void mouseDragged() {
  // メインの線を引く
  fill(255, 0, 0);
  ellipse(mouseX, mouseY, 5, 5);

  // XYを入れ替えた線を引く
  fill(0, 0, 255);
  ellipse(mouseY, mouseX, 5, 5);
}

void draw() {
}
