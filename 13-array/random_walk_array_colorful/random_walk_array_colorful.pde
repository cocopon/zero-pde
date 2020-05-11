// ランダムに歩き回るエージェントが複数体
// さらに個性を持たせる

// エージェントの位置を覚えておくための変数
float[] ballXs;
float[] ballYs;
// 色（青み）も覚えておく
float[] ballBlues;
// サイズも覚えておく
float[] ballSizes;

void setup() {
  size(600, 600);
  noStroke();

  // 配列の個数を決めて生成
  ballXs = new float[1000];
  ballYs = new float[1000];
  ballBlues = new float[1000];
  ballSizes = new float[1000];

  for (int i = 0; i < 1000; i++) {
    // i 番目のエージェントの変数の初期値（開始時の位置）をキャンバス中央に設定
    ballXs[i] = width / 2;
    ballYs[i] = height / 2;

    // i 番目のエージェントの青みをランダムに
    ballBlues[i] = random(255);
    
    // i 番目のエージェントのサイズをランダムに
    ballSizes[i] = random(2, 30);
  }
}

void draw() {
  background(255, 255, 255);

  for (int i = 0; i < 1000; i++) {
    // i 番目のエージェントの位置をランダムにずらす
    ballXs[i] += random(-10, 10);
    ballYs[i] += random(-10, 10);

    // i 番目のエージェントの青みをランダムに変化させる
    ballBlues[i] += random(-1, 1);
  }

  for (int i = 0; i < 1000; i++) {
    // i 番目のエージェントの色を設定
    fill(0, 0, ballBlues[i]);
    // i 番目のエージェントを描く
    ellipse(
      ballXs[i], ballYs[i],
      ballSizes[i], ballSizes[i]
    );
  }
}
