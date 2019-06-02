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
      float g = random(0, r);
      // 青は緑より小さく
      float b = random(0, g);
      fill(r, g, b);

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
  save("grid-rgb.png");
}
