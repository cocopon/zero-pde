// 色パレットの例
// 色相を固定する

void setup() {
  size(600, 600);

  // 色空間はHSB
  colorMode(HSB, 360, 100, 100);
  noStroke();

  // 2重のfor文でグリッドを描く
  for (int iy = 0; iy < 30; iy++) {
    for (int ix = 0; ix < 30; ix++) {
      // 色相を固定する
      float h = 200;
      // 彩度と明度はランダム
      float s = random(0, 100);
      float b = random(0, 100);
      fill(h, s, b);

      rect(
        ix * 20, iy * 20,
        20, 20
      );

      // 三角形の色も同様に決める
      float h2 = 200;
      float s2 = random(0, 100);
      float b2 = random(0, 100);
      fill(h2, s2, b2);
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
  save("grid-fixed-hue.png");
}
