// グリッドと画像の組み合わせ

// 画像用の変数
PImage img;

void setup() {
  size(600, 600);
  background(255);
  noStroke();

  // 画像を読み込む
  img = loadImage("monalisa.jpg");
}

void draw() {
  background(0);

  // 変数 y を 0 ~ 600 まで、 20 ずつ増やしながら繰り返す
  for (int y = 0; y <= 600; y += 20) {
    // 変数 x を 0 ~ 600 まで、 20 ずつ増やしながら繰り返す
    for (int x = 0; x <= 600; x += 20) {
      // ループ変数を座標としたときの画像の色を取得
      color col = img.get(x, y);
      // 塗り色に設定
      fill(col);

      // ループ変数を中心座標として円を描く
      ellipse(
        x, y,
        10, 10
      );
    }
  }
}
