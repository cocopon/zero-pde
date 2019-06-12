// ランダムに歩き回るエージェントが複数体
// （配列・for文を使って効率化）

// エージェントの位置を覚えておくための変数
float[] ballx;
float[] bally;

void setup() {
  size(600, 600);
  noStroke();
  fill(0, 0, 0);

  // 配列の個数を決めて生成
  ballx = new float[1000];
  bally = new float[1000];

  for (int i = 0; i < 1000; i++) {
    // i 番目のエージェントの変数の初期値（開始時の位置）をキャンバス中央に設定
    ballx[i] = width / 2;
    bally[i] = height / 2;
  }
}

void draw() {
  background(255, 255, 255);

  for (int i = 0; i < 1000; i++) {
    // i 番目のエージェントの位置をランダムにずらす
    ballx[i] += random(-10, 10);
    bally[i] += random(-10, 10);
  }

  for (int i = 0; i < 1000; i++) {
    // i 番目のエージェントを描く
    ellipse(ballx[i], bally[i], 30, 30);
  }
}
