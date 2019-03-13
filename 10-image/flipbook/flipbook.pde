// 読み込んだ画像でぱらぱらまんが

// コマ画像
PImage img0;
PImage img1;
PImage img2;
PImage img3;
// 何フレーム目を表示するかのカウンター
int count;

void setup() {
  size(600, 600);

  // コマ画像をすべて読み込む
  img0 = loadImage("frame0.png");
  img1 = loadImage("frame1.png");
  img2 = loadImage("frame2.png");
  img3 = loadImage("frame3.png");

  // カウントの初期値を 0 にする
  count = 0;
}

void draw() {
  background(255);

  // カウントを増やしていく（末尾まで達したら 0 に戻す）
  count += 1;
  if (count >= 4) {
    count = 0;
  }

  // カウントに応じて画像を出し分ける
  if (count == 0) {
    image(img0, 245, 245);
  }
  else if (count == 1) {
    image(img1, 245, 245);
  }
  else if (count == 2) {
    image(img2, 245, 245);
  }
  else if (count == 3) {
    image(img3, 245, 245);
  }
}
