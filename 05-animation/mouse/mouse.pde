// カーソルに追従して動く円 

void setup() {
  size(600, 600);

  strokeWeight(2);
  fill(255, 200, 100);
}

// 1秒間に約60回実行されるブロック
void draw() {
  background(255, 255, 255);

  // 円の中心がカーソル位置になるので、カーソルに追従して動くように見える
  ellipse(mouseX, mouseY, 50, 50);
}
