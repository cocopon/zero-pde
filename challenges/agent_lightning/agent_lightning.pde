// エージェント（クリック位置からランダムウォークの軌跡）

void setup() {
  size(600, 600);
  background(0);
  stroke(255, 255, 0, 100);
}

void mousePressed() {
  // エージェントの位置
  float x;
  float y;

  // 初期位置
  x = mouseX;
  y = mouseY;

  // for文で歩を進める
  for (int i = 0; i < 1000; i++) {
    // 移動前の位置を覚えておく
    float px = x;
    float py = y;

    // 移動
    x += random(-10, +10);
    y += random(-10, +10);

    // 軌跡の線を引く
    line(px, py, x, y);
  }

  saveFrame("out/###.png");
}

void draw() {
}
