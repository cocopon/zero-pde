// 色パレットの例
// かぼちゃを思わせる配色

void setup() {
  size(600, 600);

  // 色空間はHSB
  colorMode(HSB);
  noStroke();

  // 2重のfor文でグリッドを描く
  for (int iy = 0; iy < 30; iy++) {
    for (int ix = 0; ix < 30; ix++) {
      float h = random(0, 100);
      // 色相をもとに彩度を計算
      // 三角関数を通して、緑あたりの彩度を落とす（半分適当）
      float s = map(
        sin(map(h, 0, 100, 0, 2 * PI)),
        -1, +1,
        0, 255
      );
      float b = s;
      fill(h, s, b);

      rect(
        ix * 20, iy * 20,
        20, 20
      );

      // 三角形の色も同様に決める
      h = random(0, 100);
      s = map(
        sin(map(h, 0, 100, 0, 2 * PI)),
        -1, +1,
        0, 255
      );
      b = s;
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
  save("grid-pumpkin.png");
}
