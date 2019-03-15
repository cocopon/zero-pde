// 自作の線引き関数

// ボタンを押したときのカーソル位置
int px;
int py;

// 自作の線引き関数
// 引数として
// * 始点の座標 x1, y1
// * 終点の座標 x2, y2
// を受け取り、線を描く
void drawMyLine(int x1, int y1, int x2, int y2) {
  noStroke();
  fill(0);

  // 始点と終点の区間を100分割するループを回す
  for (int i = 0; i <= 100; i++) {
    // i が  0 ~ 100 まで変化するとき、
    // x を x1 ~  x2 まで、
    // y を y1 ~  y2 まで
    // 変化させたい
    //
    // i の変化を map() で座標の変化に変換する
    float x = map(i, 0, 100, x1, x2);
    float y = map(i, 0, 100, y1, y2);

    // 小さな円を描く
    ellipse(x, y, 2, 2);
  }
}

void setup() {
  size(600, 600);
  background(255);
}

void mousePressed() {
  px = mouseX;
  py = mouseY;
}

void mouseDragged() {
  background(255);
  // 自作の関数を実行して線を引く
  drawMyLine(px, py, mouseX, mouseY);
}

void draw() {
}
