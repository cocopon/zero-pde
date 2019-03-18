// 2次元配列の例（マウスに反応）

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

void mouseDragged() {
  // カーソル位置からインデックスを計算する

  // 600の幅にセルが31個あるので、X座標を20で割って四捨五入すると何番目か計算できる
  int ix = round(mouseX / 20.0);
  // 配列の範囲を超えないように調整
  if (ix < 0) {
    ix = 0;
  }
  else if (ix >= 30) {
    ix = 30;
  }

  // Y方向も同様
  int iy = round(mouseY / 20.0);
  if (iy < 0) {
    iy = 0;
  }
  else if (iy >= 30) {
    iy = 30;
  }

  // 該当する要素の数値を増やす
  cells[iy][ix] += 2;
}
