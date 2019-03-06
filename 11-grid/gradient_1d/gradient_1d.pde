// for文で1方向グラデーション

void setup() {
  size(600, 600);
  noStroke();
}

void draw() {
  // 変数 x を 0 ~ width まで、 10 ずつ増やしながら繰り返す
  for (int x = 0; x < width; x += 10) {
    // ループ変数を塗り色に反映
    // x: 0     で fill(0, 0, 255),
    // x: width で fill(255, 0, 0)
    // に近くなるように計算
    fill(
      x / 3, 0, 255 - x / 3
    );

    // 隙間なく四角形を描く
    rect(
      x, 0,
      x + 10, height
    );
  }
}
