// ランダムに歩き回るエージェントが2体

// エージェント1の位置を覚えておくための変数
float ballX1;
float ballY1;

// エージェント2の位置を覚えておくための変数
float ballX2;
float ballY2;

void setup() {
  size(600, 600);
  noStroke();
  fill(0, 0, 0);

  // エージェント1の変数の初期値（開始時の位置）をキャンバス中央に設定
  ballX1 = width / 2;
  ballY1 = height / 2;

  // エージェント1の変数の初期値（開始時の位置）をキャンバス中央に設定
  ballX2 = width / 2;
  ballY2 = height / 2;
}

void draw() {
  background(255, 255, 255);

  // エージェント1の位置をランダムにずらす
  ballX1 += random(-10, 10);
  ballY1 += random(-10, 10);

  // エージェント2の位置もランダムにずらす
  ballX2 += random(-10, 10);
  ballY2 += random(-10, 10);

  // エージェント1を描く
  ellipse(ballX1, ballY1, 30, 30);

  // エージェント2を描く
  ellipse(ballX2, ballY2, 30, 30);
}
