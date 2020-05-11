// 速度によるランダムウォーク（たくさんのエージェント）

// エージェントの位置
float[] xs;
float[] ys;
// エージェントの速度
float[] vxs;
float[] vys;

void setup() {
  size(600, 600);
  noStroke();
  fill(255, 100);
  background(0);
  
  xs = new float[100];
  ys = new float[100];
  vxs = new float[100];
  vys = new float[100];

  for (int i = 0; i < 100; i++) {
    // 初期位置
    xs[i] = width / 2;
    ys[i] = height / 2;

    // 初速
    vxs[i] = 0;
    vys[i] = 0;
  }
}

void draw() {
  for (int i = 0; i < 100; i++) {
    // 速度を位置に反映
    xs[i] += vxs[i];
    ys[i] += vys[i];
  
    // 速度をランダムに変化させる
    vxs[i] += random(-0.5, +0.5) * 2 / 4;
    vys[i] += random(-0.5, +0.5) * 2 / 4;
    
    // 簡易的な空気抵抗を加える
    vxs[i] *= 0.99;
    vys[i] *= 0.99;

    // エージェントを描く
    ellipse(xs[i], ys[i], 2, 2);
  }
}
