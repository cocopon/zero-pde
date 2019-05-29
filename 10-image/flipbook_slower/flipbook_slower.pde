// 読み込んだ画像でぱらぱらまんが
// （速度調整版）

// コマ画像
PImage img0;
PImage img1;
PImage img2;
PImage img3;
// 何フレーム目を表示するかのカウンター
// （速度調整のため小数にする）
float count;

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

  // カウントを少しずつ増やしていく（末尾まで達したら 0 に戻す）
  count = count + 0.1;
  if (count >= 4) {
    count = 0;
  }

  // カウントを floor() で切り捨てしてフレーム番号を計算
  int f = floor(count);

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
