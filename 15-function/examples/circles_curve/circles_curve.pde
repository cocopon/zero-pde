// グリッド状に円を描く（ゆるゆる）

void setup() {
  size(600, 600);

  // draw() ブロックの実行頻度を変える
  // 1秒間に0.5フレーム = 2秒に1回更新
  frameRate(0.5);
}

// ゆるゆるな円を描く関数
void myEllipse(float ox, float oy, float w, float h) {
  for (int j = 0; j < 2; j++) {
    float[] l = new float[8];
    for (int i = 0; i < 8; i++) {
      l[i] = random(0.9, 1.1);
    }

    beginShape();
    for (int i = -2; i < 8 + 1; i++) {
      int ii = (i + 8) % 8;
      float a = map(i, 0, 8, 0, 2 * PI);
      curveVertex(
        ox + cos(a) * w / 2 * l[ii],
        oy + sin(a) * h / 2 * l[ii]
      );
    }
    endShape();
  }
}

void draw() {
  background(140, 180, 200);
  stroke(255, 200);
  fill(255, 10);

  for (int y = 100; y <= 500; y += 100) {
    for (int x = 100; x <= 500; x += 100) {
      float sz = random(100);
      myEllipse(x, y, sz, sz);
    }
  }
}
