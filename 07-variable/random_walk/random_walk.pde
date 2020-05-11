// ランダムウォーク（ランダムに歩き回る）

// 位置を覚えておくための変数
float ballX;
float ballY;

void setup() {
  size(600, 600);
  noStroke();
  fill(0, 0, 0);

  // 変数の初期値（開始時の位置）をキャンバス中央に設定
  ballX = width / 2;
  ballY = height / 2;
}

void draw() {
  background(255, 255, 255);

  // 変数（ボールの位置）をランダムにずらす
  ballX = ballX + random(-10, 10);
  ballY = ballY + random(-10, 10);

  // 変数で覚えておいた位置にボールを描く
  ellipse(ballX, ballY, 30, 30);
}
