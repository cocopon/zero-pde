// 赤→青色のグラデーションを描く (RGB)

void setup() {
  size(600, 600);

  background(255);
  noStroke();

  // X座標を 0 ~ width で繰り返す
  for (int x = 0; x < width; x++) {
    // X座標を色に反映
    // x が 0     のとき、赤 R: 255, G: 0, B:   0
    // x が width のとき、青 R:   0, G: 0, B: 255
    // となるようにしたい
    fill(
      // x が 0 → width まで変化するのを、 255 → 0 に変換
      map(x, 0, width, 255, 0),
      0,
      // x が 0 → width まで変化するのを、 0 → 255 に変換
      map(x, 0, width, 0, 255)
    );
    rect(
      x, 0,
      1, height
    );
  }
}

void draw() {
}
