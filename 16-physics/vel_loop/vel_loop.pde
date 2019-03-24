// 等速移動エージェント、画面端でループ

// エージェントの位置
float x;
float y;
// エージェントの速度
float vx;
float vy;

void setup() {
  size(600, 600);
  strokeWeight(2);
  fill(255, 200, 100);

  // 初期位置
  x = 0;
  y = height / 2;

  // 初速
  vx = random(-5, +5);
  vy = random(-5, +5);
}

void draw() {
  // 速度を位置に反映
  x += vx;
  y += vy;

  // 端に達したら、反対側に移動させる
  if (x < 0) {
    x = width;
  }
  if (x > width) {
    x = 0;
  }
  if (y < 0) {
    y = height;
  }
  if (y > height) {
    y = 0;
  }

  // エージェントを描く
  background(255);
  ellipse(x, y, 60, 60);
}

void mousePressed() {
  // 速度を設定し直す
  vx = random(-5, +5);
  vy = random(-5, +5);
}
