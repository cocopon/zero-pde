// while文で波紋を描く練習（大きさや位置にも反映）

void setup() {
  size(600, 600);
  background(255, 255, 255);

  noFill();
  stroke(0, 0, 0, 50);
}

void mousePressed() {
  // 繰り返し回数を決める用のループ変数
  int i = 0;

  // i が 20 より小さいとき、ブロックを繰り返す
  while (i < 20) {
    // ループ変数を線の太さにも反映
    strokeWeight(i);

    // ループ変数を円の大きさに反映
    // 位置にも反映
    ellipse(
      mouseX, mouseY + i * 50,
      i * 50, i * 50
    );

    // i を 1 増やして繰り返す
    i = i + 1;
  }
}

void draw() {
}
