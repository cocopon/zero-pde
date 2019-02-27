// クリックした場所に汚れたような効果を描く

void setup() {
  size(600, 600);

  background(0, 0, 0);

  // 半透明の塗りを設定
  fill(255, 255, 255, 20);
  noStroke();
}

void mousePressed() {
  // クリックした座標を開始点として、
  // ランダムに1000回動きながら円を描き重ねることで、
  // 汚れのような効果が出る

  // 円の中心を変数で宣言
  // 初期値はカーソル位置
  float x = mouseX;
  float y = mouseY;

  // for文で1000回繰り返し
  for (int i = 0; i < 1000; i++) {
    // 変数 x, y の位置に円を描く
    ellipse(x, y, 4, 4);

    // ランダムで位置を移動させる
    x += random(-4, 4);
    y += random(-4, 4);
  }
}

void draw() {
}
