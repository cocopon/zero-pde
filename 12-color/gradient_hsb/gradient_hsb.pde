// 赤→青色のグラデーションを描く (HSB)

void setup() {
  size(600, 600);

  // 色モードHSBに変更
  // Hの最大値を360に
  // Sの最大値を100に
  // Bの最大値を100に
  colorMode(HSB, 360, 100, 100);

  background(255);
  noStroke();

  // X座標を 0 ~ width で繰り返す
  for (int x = 0; x < width; x++) {
    // X座標を色に反映
    // x が 0     のとき、赤 H:   0, S: 100, B: 100
    // x が width のとき、青 H: 240, S: 100, B: 100
    // となるようにしたい
    // となるようにしたい
    fill(
      // x が 0 → width まで変化するのを、 0 → 240 に変換
      map(x, 0, width, 0, 240),
      100,
      100
    );
    rect(
      x, 0,
      1, height
    );
  }
}

void draw() {
}
