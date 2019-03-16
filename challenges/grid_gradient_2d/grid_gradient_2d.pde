// 2方向グラデーション

void setup() {
  size(600, 600);
  noStroke();
}

void draw() {
  for (int y = 0; y < height; y += 10) {
    for (int x = 0; x < width; x += 10) {
      // ループ変数を塗り色に反映
      fill(
        x / 3, y / 3, 0
      );

      // 隙間なく四角形を描く
      rect(
        x, y,
        x + 10, y + 10
      );
    }
  }
}
