// 等速移動エージェント、速度を変数に

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
  vx = 3;
  vy = 0;
}

void draw() {
  // 速度を位置に反映
  x += vx;
  y += vy;

  // 右端まで達したら左端に戻す
  if (x > width) {
    x = 0;
  }

  // エージェントを描く
  background(255);
  ellipse(x, y, 60, 60);
}
