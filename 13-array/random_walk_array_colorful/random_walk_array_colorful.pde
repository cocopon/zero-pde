// ランダムに歩き回るエージェントが複数体
// さらに個性を持たせる

// エージェントの位置を覚えておくための変数
float[] ballx;
float[] bally;
// 色（青み）も覚えておく
float[] ballb;
// サイズも覚えておく
float[] ballsz;

void setup() {
  size(600, 600);
  noStroke();

  // 配列の個数を決めて生成
  ballx = new float[1000];
  bally = new float[1000];
  ballb = new float[1000];
  ballsz = new float[1000];

  for (int i = 0; i < 1000; i++) {
    // i 番目のエージェントの変数の初期値（開始時の位置）をキャンバス中央に設定
    ballx[i] = width / 2;
    bally[i] = height / 2;

    // i 番目のエージェントの青みをランダムに
    ballb[i] = random(255);
    
    // i 番目のエージェントのサイズをランダムに
    ballsz[i] = random(2, 30);
  }
}

void draw() {
  background(255, 255, 255);

  for (int i = 0; i < 1000; i++) {
    // i 番目のエージェントの位置をランダムにずらす
    ballx[i] += random(-10, 10);
    bally[i] += random(-10, 10);

    // i 番目のエージェントの青みをランダムに変化させる
    ballb[i] += random(-1, 1);
  }

  for (int i = 0; i < 1000; i++) {
    // i 番目のエージェントの色を設定
    fill(0, 0, ballb[i]);
    // i 番目のエージェントを描く
    ellipse(
      ballx[i], bally[i],
      ballsz[i], ballsz[i]
    );
  }
}
