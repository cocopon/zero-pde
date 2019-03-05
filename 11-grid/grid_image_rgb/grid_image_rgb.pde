// グリッドと画像の組み合わせ（赤青緑を取得）

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

  // 変数 y を 0 ~ height まで、 20 ずつ増やしながら繰り返す
  for (int y = 0; y <= height; y += 20) {
    // 変数 x を 0 ~ width まで、 20 ずつ増やしながら繰り返す
    for (int x = 0; x <= width; x += 20) {
      // ループ変数を座標としたときの画像の色を採取
      color col = img.get(x, y);

      // 採取した色に含まれる赤の成分を抽出
      float r = red(col);
      // 塗り色に設定
      fill(r, 0, 0);
      // 円を描く（少し左にずらす）
      ellipse(
        x - 5, y,
        r * 0.05, r * 0.05
      );

      // 採取した色に含まれる緑の成分を抽出
      float g = green(col);
      // 塗り色に設定
      fill(0, g, 0);
      // 円を描く
      ellipse(
        x, y,
        g * 0.05, g * 0.05
      );

      // 採取した色に含まれる青の成分を抽出
      float b = blue(col);
      // 塗り色に設定
      fill(0, 0, b);
      // 円を描く（少し右にずらす）
      ellipse(
        x + 5, y,
        b * 0.05, b * 0.05
      );
    }
  }
}
