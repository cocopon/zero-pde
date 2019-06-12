// ランダムに歩き回るエージェントが2体
// （配列を使って効率化）

// エージェントの位置を覚えておくための変数
float[] ballx;
float[] bally;

void setup() {
  size(600, 600);
  noStroke();
  fill(0, 0, 0);

  // 配列の個数を決めて生成
  ballx = new float[2];
  bally = new float[2];

  // エージェント1の変数の初期値（開始時の位置）をキャンバス中央に設定
  ballx[0] = width / 2;
  bally[0] = height / 2;

  // エージェント2の変数の初期値（開始時の位置）をキャンバス中央に設定
  ballx[1] = width / 2;
  bally[1] = height / 2;
}

void draw() {
  background(255, 255, 255);

  // エージェント1の位置をランダムにずらす
  ballx[0] += random(-10, 10);
  bally[0] += random(-10, 10);

  // エージェント2の位置もランダムにずらす
  ballx[1] += random(-10, 10);
  bally[1] += random(-10, 10);

  // エージェント1を描く
  ellipse(ballx[0], bally[0], 30, 30);

  // エージェント2を描く
  ellipse(ballx[1], bally[1], 30, 30);
}
