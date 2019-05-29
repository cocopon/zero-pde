// マウスに反応するグリッド

void setup() {
  size(600, 600);
  noStroke();
  fill(0);
}

void draw() {
  background(255);

  // 変数 y を 0 ~ 600 まで、 20 ずつ増やしながら繰り返す
  for (int y = 0; y <= 600; y += 20) {
    // 変数 x を 0 ~ 600 まで、 20 ずつ増やしながら繰り返す
    for (int x = 0; x <= 600; x += 20) {
      // 対象のセルとカーソル位置との距離を計算する
      float d = dist(x, y, mouseX, mouseY);
      // 距離をサイズに反映する（そのままでは数値が大きすぎるので小さくする）
      float sz = d * 0.05;

      // ループ変数を中心座標として円を描く
      ellipse(x, y, sz, sz);
    }
  }
}
