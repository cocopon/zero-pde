// ループ変数で色相を変化させて虹色の波紋

void setup() {
  size(600, 600);
  background(0);

  // 色空間をHSBに
  colorMode(HSB, 360, 100, 100);
}

void mousePressed() {
  noFill();

  for (int i = 0; i < 36; i++) {
    // ループ変数を色相に反映
    stroke(i * 10, 100, 100);
    strokeWeight(2);
    ellipse(mouseX, mouseY, i * 20, i * 20);
  }
}

void draw() {
}
