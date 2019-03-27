// 重力で落下するエージェント（マウスで掴める）

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
  if (mousePressed) {
    // マウスで掴んでいるとき：位置を調整・速度をゼロに
    x = mouseX;
    y = mouseY;
    vx = 0;
    vy = 0;
  }
  else {
    // マウスで掴んでいないとき：物理演算でボールを動かす

    // 毎フレームY方向に加速（重力）
    vy += 0.1;

    // 簡易的な空気抵抗を加える
    // （自然に減速＝毎フレーム速度を小さくする）
    vx *= 0.99;
    vy *= 0.99;

    // 速度を位置に反映
    x += vx;
    y += vy;
  }

  // 下端まで達したら跳ね返る
  if (y > height) {
    // 跳ね返り
    vy *= -0.5;
    // 地面にめりこんでいかないように位置を調整
    y = height;
  }

  // エージェントを描く
  background(255);
  ellipse(x, y, 60, 60);
}
