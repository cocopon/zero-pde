// 2次元配列の例（ランダムに変化）

// 2次元配列の変数を宣言
float[][] cells;

void setup() {
  size(600, 600);
  noStroke();
  fill(0);

  cells = new float[31][31];
  
  // 2重のfor文ですべての要素に対して処理する
  for (int iy = 0; iy <= 30; iy++) {
    for (int ix = 0; ix <= 30; ix++) {
      // 要素の値を1に
      cells[iy][ix] = 1;
    }
  }
}

void draw() {
  background(255);

  // 2重のfor文ですべての要素に対して処理する
  for (int iy = 0; iy <= 30; iy++) {
    for (int ix = 0; ix <= 30; ix++) {
      // 5%の確率で、ランダムに要素の数値を増やす
      if (random(1) < 0.05) {
        cells[iy][ix] += random(2);
      }

      // 配列の値をサイズとして利用、円を描く
      float sz = cells[iy][ix];
      ellipse(
        ix * 20,
        iy * 20,
        sz, sz
      );
    }
  }
}
