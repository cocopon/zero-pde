// 等速移動エージェント、壁による跳ね返り

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

  // 端に達したら、速度を反転させる
  // 左端
  if (x < 0) {
    vx *= -1;
  }
  // 右端
  if (x > width) {
    vx *= -1;
  }
  // 上端
  if (y < 0) {
    vy *= -1;
  }
  // 下端
  if (y > height) {
    vy *= -1;
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
