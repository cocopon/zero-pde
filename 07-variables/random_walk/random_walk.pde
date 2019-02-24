// ランダムウォーク（ランダムに歩き回る）

// 位置を覚えておくための変数
float ballx;
float bally;

void setup() {
  size(600, 600);
  noStroke();
  fill(0, 0, 0);

  // 変数の初期値（開始時の位置）をキャンバス中央に設定
  ballx = width / 2;
  bally = height / 2;
}

void draw() {
  background(255, 255, 255);

  // 変数（ボールの位置）をランダムにずらす
  ballx = ballx + random(-10, 10);
  bally = bally + random(-10, 10);

  // 変数で覚えておいた位置にボールを描く
  ellipse(ballx, bally, 30, 30);
}
