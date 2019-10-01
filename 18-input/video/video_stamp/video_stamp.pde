// カメラの映像でスタンプ

// カメラの映像を扱うためのライブラリをインポート
import processing.video.*;

// カメラ
Capture cam;

void setup() {
  size(600, 600);

  background(255);

  // カメラを初期化（おまじない。現時点で深い意味は考えなくてOK）
  cam = new Capture(this);
  cam.start();
}

void mousePressed() {
  // 映像を小さく描く
  image(cam, mouseX, mouseY, 80, 60);
}

void mouseDragged() {
  // 映像を小さく描く
  image(cam, mouseX, mouseY, 80, 60);
}

void draw() {
  // カメラが有効なら、映像を取り込む
  if (cam.available()) {
    cam.read();
  }
}
