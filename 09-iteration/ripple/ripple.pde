// for文で波紋を描く

void setup() {
  size(600, 600);
  background(255, 255, 255);

  noFill();
  stroke(0, 0, 0, 255);
}

void mousePressed() {
  // 1. ループ変数 i を 0 からスタート
  // 2. i が 200 より小さいとき、ブロックを繰り返す
  // 3. ブロックの最後まで実行したら、i を 10 増やす
  // 繰り返す
  for (int i = 0; i < 200; i += 10) {
    // ループ変数を円の大きさに反映
    ellipse(mouseX, mouseY, i, i);
  }
}

void draw() {
}
