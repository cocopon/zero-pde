// 秒数を位置に反映して動く円

void setup() {
  size(600, 600);

  strokeWeight(2);
  fill(255, 200, 100);
}

// 1秒間に約60回実行されるブロック
void draw() {
  background(255, 255, 255);

  // 円のX座標が秒数になるので、秒針のように動いて見える
  ellipse(second() * 10, 300, 50, 50);
}
