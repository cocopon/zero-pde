// 色パレットの例
// R, G, Bの間にそれぞれ制約をかける

void setup() {
  size(600, 600);

  noStroke();

  // 2重のfor文でグリッドを描く
  for (int iy = 0; iy < 30; iy++) {
    for (int ix = 0; ix < 30; ix++) {
      // 赤は完全ランダム
      float r = random(0, 255);
      // 緑は赤より小さく
      float g = random(r, 255);
      // 青は緑より小さく
      float b = random(0, g);
      fill(r, g, b);

      rect(
        ix * 20, iy * 20,
        20, 20
      );

      // 三角形の色も同様に決める
      float r2 = random(0, 255);
      float g2 = random(r2, 255);
      float b2 = random(0, g2);
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
  save("grid-rgb.png");
}
