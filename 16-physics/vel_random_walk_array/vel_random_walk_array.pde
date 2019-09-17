// 速度によるランダムウォーク（たくさんのエージェント）

// エージェントの位置
float[] x;
float[] y;
// エージェントの速度
float[] vx;
float[] vy;

void setup() {
  size(600, 600);
  noStroke();
  fill(255, 100);
  background(0);
  
  x = new float[100];
  y = new float[100];
  vx = new float[100];
  vy = new float[100];

  for (int i = 0; i < 100; i++) {
    // 初期位置
    x[i] = width / 2;
    y[i] = height / 2;

    // 初速
    vx[i] = 0;
    vy[i] = 0;
  }
}

void draw() {
  for (int i = 0; i < 100; i++) {
    // 速度を位置に反映
    x[i] += vx[i];
    y[i] += vy[i];
  
    // 速度をランダムに変化させる
    vx[i] += random(-0.5, +0.5) * 2 / 4;
    vy[i] += random(-0.5, +0.5) * 2 / 4;
    
    // 簡易的な空気抵抗を加える
    vx[i] *= 0.99;
    vy[i] *= 0.99;

    // エージェントを描く
    ellipse(x[i], y[i], 2, 2);
  }
}
