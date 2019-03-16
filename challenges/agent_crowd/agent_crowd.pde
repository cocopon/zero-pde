// エージェント（群衆ランダムウォーク）

// エージェントの数
int count = 1000;
// エージェントの位置
float[] x;
float[] y;

void setup() {
  size(600, 600);
  noStroke();
  fill(0);

  x = new float[count];
  y = new float[count];

  // 初期位置
  for (int i = 0; i < count; i++) {
    x[i] = width / 2;
    y[i] = height / 2;
  }
}

void draw() {
  background(255);

  for (int i = 0; i < count; i++) {
    // 移動
    x[i] += random(-3, +3);
    y[i] += random(-3, +3);

    ellipse(x[i], y[i], 4, 4);
  }
}
