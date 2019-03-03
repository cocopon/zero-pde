// 手動で波紋を描く

void setup() {
  size(600, 600);
  background(255);
}

void mousePressed() {
  // 小さな円を塗りつぶさないように塗りをなくす
  noFill();
  stroke(0);

  // サイズの異なる円を重ねて波紋にする
  ellipse(mouseX, mouseY, 100, 100);
  ellipse(mouseX, mouseY, 120, 120);
  ellipse(mouseX, mouseY, 140, 140);
}

void draw() {
}
