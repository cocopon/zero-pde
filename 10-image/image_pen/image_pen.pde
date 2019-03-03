// 画像から採色してペンに

// 画像用の変数
PImage img;

void setup() {
  size(600, 600);
  background(255);
  noStroke();

  // 画像を読み込む
  img = loadImage("monalisa.jpg");
}

void mouseDragged() {
  // 画像のカーソル位置の色を取得してcolor型の変数に入れる
  color col = img.get(mouseX, mouseY);
  // 採取した色を塗りに設定
  fill(col);

  // カーソル位置に円を描く
  ellipse(mouseX, mouseY, 100, 100);
}

void draw() {
}
