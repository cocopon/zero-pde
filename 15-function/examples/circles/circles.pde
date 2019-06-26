// グリッド状に円を描く（関数なし）

void setup() {
  size(600, 600);

  // draw() ブロックの実行頻度を変える
  // 1秒間に0.5フレーム = 2秒に1回更新
  frameRate(0.5);
}

void draw() {
  background(255);

  for (int y = 100; y <= 500; y += 100) {
    for (int x = 100; x <= 500; x += 100) {
      float sz = random(200);
      noStroke();
      fill(0, 100);
      ellipse(x, y, sz, sz);
    }
  }
}
