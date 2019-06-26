// グリッド状に円を描く（点描）

void setup() {
  size(600, 600);
  colorMode(HSB, 360, 100, 100);

  // draw() ブロックの実行頻度を変える
  // 1秒間に0.5フレーム = 2秒に1回更新
  frameRate(0.5);
}

// 点描で円を描く関数
void myEllipse(float ox, float oy, float w, float h) {
  int count = floor(PI * w / 2 * h / 2);
  for (int i = 0; i < count; i++) {
    float a = random(TWO_PI);
    float l = random(1) * random(1);
    float xl = map(l, 0, 1, w / 2, 0);
    float yl = map(l, 0, 1, h / 2, 0);
    rect(ox + cos(a) * xl, oy + sin(a) * yl, 1, 1);
  }
}

void draw() {
  background(0, 0, 100);
  noStroke();

  for (int y = 100; y <= 500; y += 100) {
    for (int x = 100; x <= 500; x += 100) {
      fill(random(360), 50, 40, 40);

      float sz = random(200);
      myEllipse(x, y, sz, sz);
    }
  }
}
