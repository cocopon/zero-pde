// 色パレットの例
// 画像から色を拝借する

PImage img;

void setup() {
  size(600, 600);

  // 色パレットとして使う画像を読み込む
  img = loadImage("image.jpg");

  noStroke();

  // 2重のfor文でグリッドを描く
  for (int iy = 0; iy < 30; iy++) {
    for (int ix = 0; ix < 30; ix++) {
      // 画像のランダムな位置から色を取得して、塗り色に使用する
      color c = img.get(
        (int)random(0, 1136),
        (int)random(0, 900)
      );
      fill(c);

      rect(
        ix * 20, iy * 20,
        20, 20
      );
    }
  }
}

void draw() {
}

// クリックしたとき、キャンバスを画像として保存
void mousePressed() {
  save("grid-image.png");
}
