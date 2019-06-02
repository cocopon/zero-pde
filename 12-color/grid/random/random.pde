// 色パレットの例
// 完全ランダム

void setup() {
  size(600, 600);

  noStroke();

  // 2重のfor文でグリッドを描く
  for (int iy = 0; iy < 30; iy++) {
    for (int ix = 0; ix < 30; ix++) {
      // 塗り色を完全ランダムに
      float r = random(0, 255);
      float g = random(0, 255);
      float b = random(0, 255);
      fill(r, g, b);

      rect(
        ix * 20, iy * 20,
        20, 20
      );

      // 三角形も描く場合は以下のコメントを外す
      //float r2 = random(0, 255);
      //float g2 = random(0, 255);
      //float b2 = random(0, 255);
      //fill(r2, g2, b2);
      //// ランダムな向きで三角形を描く
      //if (random(0, 100) < 50) {
      //  triangle(
      //    ix * 20, iy * 20,
      //    ix * 20 + 20, iy * 20,
      //    ix * 20 + 20, iy * 20 + 20
      //  );
      //} else {
      //  triangle(
      //    ix * 20, iy * 20,
      //    ix * 20, iy * 20 + 20,
      //    ix * 20 + 20, iy * 20
      //  );
      //}
    }
  }
}

void draw() {
}

// クリックしたとき、キャンバスを画像として保存
void mousePressed() {
  save("grid-random.png");
}
