// 配列でエージェント100体のランダムウォーク

// エージェントの位置を覚えておくための配列
float x[];
float y[];

void setup() {
  size(600, 600);
  noStroke();
  fill(0);

  // 配列の個数を決めて生成
  x = new float[100];
  y = new float[100];

  // エージェントの初期位置を設定
  for (int i = 0; i < 100; i++) {
    x[i] = width / 2;
    y[i] = height / 2;
  }
}

void draw() {
  background(255);

  for (int i = 0; i < 100; i++) {
    // i番目のエージェントの位置をずらす
    x[i] += random(-5, 5);
    y[i] += random(-5, 5);

    // i番目のエージェントを描く
    ellipse(x[i], y[i], 10, 10);
  }
}
