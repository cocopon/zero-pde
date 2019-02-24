// 照明のON/OFFを切り替える

// 照明の点灯状態に使う変数
// ON/OFF の2通りしかないので boolean を使う
boolean light;

void setup() {
  size(600, 600);

  // 初期状態はOFF
  light = false;
}

void draw() {
  // もし照明がONのとき
  if (light == true) {
    background(255, 255, 255);
    stroke(255, 255, 200);
    strokeWeight(20);
    fill(255, 200, 100);
  }
  // それ以外（OFF）のとき
  else {
    background(0);
    noStroke();
    fill(20, 20, 30);
  }

  // 円を描く
  ellipse(width / 2, height / 2, 200, 200);
}

// マウスをクリックしたときに実行されるブロック
void mousePressed() {
  // もし照明がONのとき
  if (light == true) {
    // OFFにする
    light = false;
  }
  // それ以外（OFF）のとき
  else {
    // ONにする
    light = true;
  }
}
