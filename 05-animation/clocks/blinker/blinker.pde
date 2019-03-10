// 1秒おきに点滅して秒を刻む

void setup() {
  size(600, 600);
  noStroke();
}

void draw() {
  background(255, 255, 255);

  // 偶数秒なら塗りを黒色、それ以外は灰色
  if (second() % 2 == 0) {
    fill(0, 0, 0);
  }
  else {
    fill(220, 220, 220);
  }

  ellipse(300, 250, 50, 50);
  ellipse(300, 350, 50, 50);
}
