// 色パレットの例
// 夢色パステル

void setup() {
  size(600, 600);

  // 色空間はHSB
  colorMode(HSB, 360, 100, 100);
  noStroke();

  // 2重のfor文でグリッドを描く
  for (int iy = 0; iy < 30; iy++) {
    for (int ix = 0; ix < 30; ix++) {
      float h = random(200, 300);
      float s = random(0, 30);
      float b = 100;
      fill(h, s, b);

      rect(
        ix * 20, iy * 20,
        20, 20
      );

      // 三角形の色も同様に決める
      h = random(250, 300);
      s = random(0, 30);
      b = 100;
      fill(h, s, b);
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
  save("grid-dream.png");
}
