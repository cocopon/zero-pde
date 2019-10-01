// カメラの映像を描く

// カメラの映像を扱うためのライブラリをインポート
import processing.video.*;

// カメラ
Capture cam;

void setup() {
  size(600, 600);

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

  // 映像を描く（カメラの映像は画像 PImage と同じように扱える）
  image(cam, 0, 0);
}
