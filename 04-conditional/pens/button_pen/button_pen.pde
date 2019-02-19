// 2色ペン（右ボタンで別の色）

void setup() {
  size(600, 600);
  background(255, 255, 255);

  strokeWeight(3);
}

void mouseDragged() {
  // もし押されたボタンが左なら
  if (mouseButton == LEFT) {
    // 線の色を黒色に
    stroke(0, 0, 0);
  }
  // もしそれ以外で、押されたボタンが右なら
  else if (mouseButton == RIGHT) {
    // 線の色を赤色に
    stroke(255, 0, 0);
  }

  // 線を引く
  line(pmouseX, pmouseY, mouseX, mouseY);
}

void draw() {
}
