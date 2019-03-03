// 色パレットの例
// 各色素のランダム幅を狭める

void setup() {
  size(600, 600);

  noStroke();

  // 2重のfor文でグリッドを描く
  for (int iy = 0; iy < 30; iy++) {
    for (int ix = 0; ix < 30; ix++) {
      // ランダムに色を決めるが、範囲を狭める
      float r = random(100, 150);
      float g = random(0, 50);
      float b = random(200, 255);
      fill(r, g, b);

      rect(
        ix * 20, iy * 20,
        20, 20
      );

      // 三角形の色も同様に決める
      float r2 = random(100, 150);
      float g2 = random(0, 50);
      float b2 = random(200, 255);
      fill(r2, g2, b2);
      // ランダムな向きで三角形を描く
      if (random(0, 100) < 50) {
        triangle(
          ix * 20, iy * 20,
          ix * 20 + 20, iy * 20,
          ix * 20 + 20, iy * 20 + 20
        );
      } else {
        triangle(
          ix * 20, iy * 20,
          ix * 20, iy * 20 + 20,
          ix * 20 + 20, iy * 20
        );
      }
    }
  }
}

void draw() {
}

// クリックしたとき、キャンバスを画像として保存
void mousePressed() {
  save("grid-weak-random.png");
}
