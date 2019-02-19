// 条件式の練習（市松模様）

void setup() {
  size(600, 600);
  background(200, 200, 200);
  noStroke();
}

void mouseMoved() {
  // もし
  // mouseX が 300 未満かつ mouseY が 300 未満（キャンバス左上）
  // または
  // mouseX が 300 より大きいかつ mouseY が 300 より大きい（キャンバス右下）
  // とき
  if (mouseX < 300 && mouseY < 300
    || mouseX > 300 && mouseY > 300) {
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
