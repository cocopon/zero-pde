// グリッド状に円を描く（グラデーション）

void setup() {
  size(600, 600);
  colorMode(HSB, 360, 100, 100);

  // draw() ブロックの実行頻度を変える
  // 1秒間に0.5フレーム = 2秒に1回更新
  frameRate(0.5);
}

// グラデーションな円を描く関数
void myEllipse(float ox, float oy, float w, float h) {
  pushStyle();

  noStroke();

  // g.fillColor で現在の塗り色を取得できる（裏技）
  float baseHue = hue(g.fillColor);

  int count = ceil(max(w, h) / 4);
  for (float i = 0; i < count; i++) {
    float s = map(i, 0, count, 25, 100);
    fill(baseHue, s, 100);

    float pw = map(i, 0, count, w, 0);
    float ph = map(i, 0, count, h, 0);
    ellipse(ox, oy, pw, ph);
  }

  popStyle();
}

void draw() {
  background(0, 0, 100);

  for (int y = 100; y <= 500; y += 100) {
    for (int x = 100; x <= 500; x += 100) {
      fill(random(20, 100), 100, 100);

      float sz = random(100);
      myEllipse(x, y, sz, sz);
    }
  }
}
