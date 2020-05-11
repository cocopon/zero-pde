// 配列でエージェント100体のランダムウォーク

// エージェントの位置を覚えておくための配列
float[] xs;
float[] ys;

void setup() {
  size(600, 600);
  noStroke();
  fill(0);

  // 配列の個数を決めて生成
  xs = new float[100];
  ys = new float[100];

  // エージェントの初期位置を設定
  for (int i = 0; i < 100; i++) {
    xs[i] = width / 2;
    ys[i] = height / 2;
  }
}

void draw() {
  background(255);

  for (int i = 0; i < 100; i++) {
    // i番目のエージェントの位置をずらす
    xs[i] += random(-5, 5);
    ys[i] += random(-5, 5);

    // i番目のエージェントを描く
    ellipse(xs[i], ys[i], 10, 10);
  }
}
