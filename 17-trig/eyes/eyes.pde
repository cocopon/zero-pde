// カーソルを見つめる目

void setup() {
  size(600, 600);
  noStroke();
}

void draw() {
  background(0);

  drawEye(200, 300);
  drawEye(400, 300);
}

// 指定した位置 (ox, oy) に目を描く関数
void drawEye(float ox, float oy) {
  // 白目
  fill(255);
  ellipse(ox, oy, 100, 100);

  // 目からカーソルまでの角度を計算
  float angle = atan2(mouseY - oy, mouseX - ox);

  // 指定した角度の位置に黒目を描く
  fill(0);
  ellipse(
    ox + cos(angle) * 20, oy + sin(angle) * 20,
    50, 50
  );
}
