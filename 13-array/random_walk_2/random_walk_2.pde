// ランダムに歩き回るエージェントが2体

// エージェント1の位置を覚えておくための変数
float ballx1;
float bally1;

// エージェント2の位置を覚えておくための変数
float ballx2;
float bally2;

void setup() {
  size(600, 600);
  noStroke();
  fill(0, 0, 0);

  // エージェント1の変数の初期値（開始時の位置）をキャンバス中央に設定
  ballx1 = width / 2;
  bally1 = height / 2;

  // エージェント1の変数の初期値（開始時の位置）をキャンバス中央に設定
  ballx2 = width / 2;
  bally2 = height / 2;
}

void draw() {
  background(255, 255, 255);

  // エージェント1の位置をランダムにずらす
  ballx1 = ballx1 + random(-10, 10);
  bally1 = bally1 + random(-10, 10);

  // エージェント2の位置もランダムにずらす
  ballx2 = ballx2 + random(-10, 10);
  bally2 = bally2 + random(-10, 10);

  // エージェント1を描く
  ellipse(ballx1, bally1, 30, 30);

  // エージェント2を描く
  ellipse(ballx2, bally2, 30, 30);
}
