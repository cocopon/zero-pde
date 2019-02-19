// 条件式の練習（シマウマ模様）

void setup() {
  size(600, 600);
  background(200, 200, 200);
  noStroke();
}

void mouseMoved() {
  // もし
  // mouseX が 100 より大きいかつ 200 未満
  // または
  // mouseX が 300 より大きいかつ 400 未満
  // または
  // mouseX が 500 より大きいかつ 600 未満
  // のとき
  if (mouseX > 100 && mouseX < 200
    || mouseX > 300 && mouseX < 400
    || mouseX > 500 && mouseX < 600) {
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
