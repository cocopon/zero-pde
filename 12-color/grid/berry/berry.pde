// 色パレットの例
// ベリー系の果物を思わせる配色

void setup() {
  size(600, 600);

  // 色空間はHSB
  colorMode(HSB, 360, 100, 100);
  noStroke();

  // 2重のfor文でグリッドを描く
  for (int iy = 0; iy < 30; iy++) {
    for (int ix = 0; ix < 30; ix++) {
      // 色相を3パターンに固定する
      float rnd = random(0, 100);
      float h = 0;
      if (rnd < 33) {
        h = 85;
      } else if (rnd < 66) {
        h = 170;
      } else {
        h = 340;
      }
      float s = random(0, 100);
      float b = random(0, 100);
      fill(h, s, b);

      rect(
        ix * 20, iy * 20,
        20, 20
      );

      // 三角形の色も同様に決める
      rnd = random(0, 100);
      h = 0;
      if (rnd < 33) {
        h = 85;
      } else if (rnd < 66) {
        h = 170;
      } else {
        h = 340;
      }
      s = random(0, 100);
      b = random(0, 100);
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
  save("grid-berry.png");
}
