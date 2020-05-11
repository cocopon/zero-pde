// エージェント（群衆ランダムウォーク）

// エージェントの数
int count = 1000;
// エージェントの位置
float[] xs;
float[] ys;

void setup() {
  size(600, 600);
  noStroke();
  fill(0);

  xs = new float[count];
  ys = new float[count];

  // 初期位置
  for (int i = 0; i < count; i++) {
    xs[i] = width / 2;
    ys[i] = height / 2;
  }
}

void draw() {
  background(255);

  for (int i = 0; i < count; i++) {
    // 移動
    xs[i] += random(-3, +3);
    ys[i] += random(-3, +3);

    ellipse(xs[i], ys[i], 4, 4);
  }
}
