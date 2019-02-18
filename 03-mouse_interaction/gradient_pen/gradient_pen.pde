// カーソル位置が色に反映されてグラデーションになるペン

void setup() {
  size(600, 600);
  background(255, 255, 255);
  
  noStroke();
}

void mouseDragged() {
  // カーソル位置を塗り色に反映する
  fill(0, mouseX, 0);
  
  // カーソル位置に図形を描く
  ellipse(mouseX, mouseY, 20, 20);
}

void draw() {
}
