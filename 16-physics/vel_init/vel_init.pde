// はじめての速度（等速移動エージェント）

// エージェントの位置
float x;
float y;

void setup() {
  size(600, 600);
  strokeWeight(2);
  fill(255, 200, 100);

  // 初期位置
  x = 0;
  y = height / 2;
}

void draw() {
  // 毎回右に5pxずつ移動する
  x += 5;

  // 右端まで達したら左端に戻す
  if (x > width) {
    x = 0;
  }

  // エージェントを描く
  background(255);
  ellipse(x, y, 60, 60);

  saveFrame("out/###.png");
}
