void setup() {
  size(600, 600);
  background(200, 200, 200);
}

void mouseDragged() {
  // 現在のミリ秒が2で割り切れるとき
  if (millis() % 2 == 0) {
    // 塗りを赤色に
    fill(255, 0, 0);
  }
  // そうでないとき
  else {
    // 塗りを白色に
    fill(255, 255, 255);
  }

  ellipse(mouseX, mouseY, 100, 100);
}

void draw() {
}
