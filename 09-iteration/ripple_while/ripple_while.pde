// while文で波紋を描く

// 繰り返し回数を決める用のループ変数
int i;

void setup() {
  size(600, 600);
  background(255, 255, 255);

  noFill();
  stroke(0, 0, 0);
}

void mousePressed() {
  // ループ変数を初期化
  i = 0;

  // i が 20 より小さいとき、ブロックを繰り返す
  while (i < 20) {
    // ループ変数を円の大きさに反映
    ellipse(mouseX, mouseY, i * 10, i * 10);

    // i を 1 増やして繰り返す
    i = i + 1;
  }
}

void draw() {
}
