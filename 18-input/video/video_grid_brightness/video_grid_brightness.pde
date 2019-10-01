// カメラの映像の色を使ってグリッド
// 明るいセルほど大きくする

// カメラの映像を扱うためのライブラリをインポート
import processing.video.*;

// カメラ
Capture cam;

void setup() {
  size(600, 600);
  noStroke();

  // カメラを初期化（おまじない。現時点で深い意味は考えなくてOK）
  cam = new Capture(this);
  cam.start();
}

void draw() {
  // カメラが有効なら、映像を取り込む
  if (cam.available()) {
    cam.read();
  }

  background(0);

  for (int y = 0; y <= height; y += 20) {
    for (int x = 0; x <= width; x += 20) {
      // 映像の色を取得
      color col = cam.get(x, y);

      fill(col);

      // 明るさを取得してサイズに反映
      float b = brightness(col);
      float sz = b / 255 * 20;

      ellipse(x, y, sz, sz);
    }
  }
}
