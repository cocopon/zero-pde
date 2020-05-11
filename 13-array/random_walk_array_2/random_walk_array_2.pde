// ランダムに歩き回るエージェントが2体
// （配列を使って効率化）

// エージェントの位置を覚えておくための変数
float[] ballXs;
float[] ballYs;

void setup() {
  size(600, 600);
  noStroke();
  fill(0, 0, 0);

  // 配列の個数を決めて生成
  ballXs = new float[2];
  ballYs = new float[2];

  // エージェント1の変数の初期値（開始時の位置）をキャンバス中央に設定
  ballXs[0] = width / 2;
  ballYs[0] = height / 2;

  // エージェント2の変数の初期値（開始時の位置）をキャンバス中央に設定
  ballXs[1] = width / 2;
  ballYs[1] = height / 2;
}

void draw() {
  background(255, 255, 255);

  // エージェント1の位置をランダムにずらす
  ballXs[0] += random(-10, 10);
  ballYs[0] += random(-10, 10);

  // エージェント2の位置もランダムにずらす
  ballXs[1] += random(-10, 10);
  ballYs[1] += random(-10, 10);

  // エージェント1を描く
  ellipse(ballXs[0], ballYs[0], 30, 30);

  // エージェント2を描く
  ellipse(ballXs[1], ballYs[1], 30, 30);
}
