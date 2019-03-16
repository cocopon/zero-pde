// エージェント（ランダムウォーク）

// エージェントの位置
float x;
float y;

void setup() {
  size(600, 600);
  noStroke();
  fill(0);

  // 初期位置
  x = width / 2;
  y = height / 2;
}

void draw() {
  background(255);

  // 移動
  x += random(-3, +3);
  y += random(-3, +3);

  ellipse(x, y, 20, 20);
}
