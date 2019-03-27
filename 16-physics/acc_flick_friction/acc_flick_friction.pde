// 重力で落下するエージェント（クリックで弾ける）

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
  x = width / 2;
  y = height / 2;

  // 初速
  vx = 0;
  vy = 0;
}

void draw() {
  // 毎フレームY方向に加速（重力）
  vy += 0.1;

  // 簡易的な空気抵抗を加える
  // （自然に減速＝毎フレーム速度を小さくする）
  vx *= 0.99;
  vy *= 0.99;

  // 速度を位置に反映
  x += vx;
  y += vy;

  // 端に達したら跳ね返る
  // 左端
  if (x < 0) {
    vx *= -0.5;
    x = 0;
  }
  // 右端
  if (x > width) {
    vx *= -0.5;
    x = width;
  }
  // 下端
  if (y > height) {
    vy *= -0.5;
    y = height;
  }

  // エージェントを描く
  background(255);
  ellipse(x, y, 60, 60);
}

void mousePressed() {
  vx += random(-10, 10);
  vy += random(-10, 10);
}
