// エージェント（カーソルに追従する）

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
  if (x < mouseX) {
    x += random(0, 5);
  }
  else if (x > mouseX) {
    x -= random(0, 5);
  }
  if (y < mouseY) {
    y += random(0, 5);
  }
  else if (y > mouseY) {
    y -= random(0, 5);
  }

  ellipse(x, y, 20, 20);
}
