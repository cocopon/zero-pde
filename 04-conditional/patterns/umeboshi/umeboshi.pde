// 条件式の練習（梅干し弁当）

void setup() {
  size(600, 600);
  background(200, 200, 200);
  noStroke();
}

void mouseMoved() {
  // もし
  // mouseX が 200 より大きい
  // かつ
  // mouseX が 400 未満
  // かつ
  // mouseY が 200 より大きい
  // かつ
  // mouseY が 400 未満
  // のとき
  if (mouseX > 200
    && mouseX < 400
    && mouseY > 200
    && mouseY < 400) {
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
