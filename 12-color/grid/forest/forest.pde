// 色パレットの例
// 森を思わせる配色

void setup() {
  size(600, 600);

  // 色空間はHSB
  colorMode(HSB);

  noStroke();

  // 2重のfor文でグリッドを描く
  for (int iy = 0; iy < 30; iy++) {
    for (int ix = 0; ix < 30; ix++) {
      float h = random(100, 255);
      // 彩度は色相の数値を反転してみる
      float s = 255 - h;
      // 明度は彩度と同じ
      float b = s;
      fill(h, s, b);

      rect(
        ix * 20, iy * 20,
        20, 20
      );
    }
  }
}

void draw() {
}

// クリックしたとき、キャンバスを画像として保存
void mousePressed() {
  save("grid-forest.png");
}
