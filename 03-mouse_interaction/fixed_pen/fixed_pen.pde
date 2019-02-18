// 画面中央から線を引いてみるペン

void setup() {
  size(600, 600);
  background(0, 0, 0);
}

void mouseDragged() {
  // 不透明度を下げてやや薄くする
  stroke(255, 255, 255, 50);

  // 画面の中央と線を引いてみる
  // 画面のサイズは 600, 600 なので、中央の座標は 300
  line(300, 300, mouseX, mouseY);
}

void draw() {
}
