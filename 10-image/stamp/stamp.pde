// クリックで画像をスタンプのように描く

// 画像用の変数
PImage img;

void setup() {
  size(600, 600);
  background(255);

  // 画像を読み込む
  img = loadImage("stamp.png");
}

void mousePressed() {
  // クリックした位置に画像を描く
  image(img, mouseX, mouseY);
}

void draw() {
}
