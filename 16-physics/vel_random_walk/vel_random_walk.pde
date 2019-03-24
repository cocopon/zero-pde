// 速度によるランダムウォーク

// エージェントの位置
float x;
float y;
// エージェントの速度
float vx;
float vy;

void setup() {
  size(600, 600);
  noStroke();
  fill(0);

  // 初期位置
  x = width / 2;
  y = height / 2;

  // 初速
  vx = 0;
  vy = 0;
}

void draw() {
  // 速度を位置に反映
  x += vx;
  y += vy;

  // 速度をランダムに変化させる
  vx += random(-0.1, +0.1);
  vy += random(-0.1, +0.1);

  // エージェントを描く
  background(255);
  ellipse(x, y, 30, 30);
}
