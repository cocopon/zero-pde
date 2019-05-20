// キャンバスから採色してペンに

void setup() {
  size(600, 600);
  background(255);
  noStroke();

  // 画像を読み込んで描く
  PImage img = loadImage("monalisa.jpg");
  image(img, 0, 0);
}

void mouseDragged() {
  // キャンバスから色を採取して塗りに設定
  color col = get(mouseX, mouseY);
  fill(col);

  // カーソル位置を中心にランダムに円を描く
  // （while文で繰り返して飛沫を増やす）
  int i = 0;
  while (i < 5) {
    float sz = random(1, 10);
    ellipse(
      mouseX + random(-10, +10),
      mouseY + random(-10, +10),
      sz, sz
    );

    i = i + 1;
  }
}

void draw() {
}
