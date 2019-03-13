// 読み込んだ画像でぱらぱらまんが
// （カーソルを追いかける）

// コマ画像
PImage img0;
PImage img1;
PImage img2;
PImage img3;

void setup() {
  size(600, 600);

  // コマ画像をすべて読み込む
  img0 = loadImage("frame0.png");
  img1 = loadImage("frame1.png");
  img2 = loadImage("frame2.png");
  img3 = loadImage("frame3.png");
}

void draw() {
  background(255);

  // フレーム番号 
  int f;
  if (mouseX < 200) {
    // カーソルが左のほうにあるとき：
    // 左向き画像のフレーム番号を設定
    f = 1;
  }
  else if (mouseX > 400) {
    // カーソルが右のほうにあるとき：
    // 右向き画像のフレーム番号を設定
    f = 3;
  }
  else {
    // それ以外のとき：
    // 正面向き画像のフレーム番号を設定
    f = 0;
  }

  // フレーム番号に応じて画像を出し分ける
  if (f == 0) {
    image(img0, 245, 245);
  }
  else if (f == 1) {
    image(img1, 245, 245);
  }
  else if (f == 2) {
    image(img2, 245, 245);
  }
  else if (f == 3) {
    image(img3, 245, 245);
  }
}
