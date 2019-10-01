// カメラの映像の色を使ってグリッド

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

  for (int y = 0; y <= height; y += 40) {
    for (int x = 0; x <= width; x += 40) {
      fill(cam.get(x, y));
      ellipse(x, y, 20, 20);
    }
  }
}
