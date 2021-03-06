// 規則的に整列（1次元）

void setup() {
  size(600, 600);
  noStroke();
  fill(0);
}

void draw() {
  background(255);

  // 変数 x を 0 ~ 600 まで、 100 ずつ増やしながら繰り返す
  for (int x = 0; x <= 600; x += 100) {
    // ループ変数を中心座標として円を描く
    // x: 0, 100, 200, …, 600
    ellipse(x, 300, 30, 30);
  }
}
