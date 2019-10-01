// カメラの映像とランダムウォークと組み合わせてみる

// カメラの映像を扱うためのライブラリをインポート
import processing.video.*;

// カメラ
Capture cam;

// ランダムウォークするエージェント
float bx;
float by;

void setup() {
  size(600, 600);
  noStroke();

  background(0);

  // エージェントの初期位置を画面中央に
  bx = width / 2;
  by = height / 2;

  // カメラを初期化（おまじない。現時点で深い意味は考えなくてOK）
  cam = new Capture(this);
  cam.start();
}

void draw() {
  // カメラが有効なら、映像を取り込む
  if (cam.available()) {
    cam.read();
  }

  // エージェントを移動
  bx += random(-5, 5);
  by += random(-5, 5);

  // 映像の色を取得して塗り色に設定
  color col = cam.get(floor(bx), floor(by));
  fill(col);

  ellipse(bx, by, 50, 50);
}
