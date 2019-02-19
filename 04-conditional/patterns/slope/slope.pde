// 条件式の練習（斜め）

void setup() {
  size(600, 600);
  background(200, 200, 200);
  noStroke();
}

void mouseMoved() {
  // もし
  // mouseX + mouseY が 600 未満
  // のとき
  if (mouseX + mouseY < 600) {
    // 塗りを黒色に
    fill(0, 0, 0);
  }
  else {
    // それ以外は白色
    fill(255, 255, 255);
  }

  ellipse(mouseX, mouseY, 100, 100);
}

void draw() {
}
