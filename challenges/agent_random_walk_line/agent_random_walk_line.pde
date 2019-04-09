// エージェント（ランダムウォークの軌跡）

// エージェントの位置
float x;
float y;

void setup() {
  size(600, 600);
  background(255);

  // 初期位置
  x = width / 2;
  y = height / 2;
}

void draw() {
  // 移動前の位置を覚えておく
  float px = x;
  float py = y;

  // 移動
  x += random(-6, +6);
  y += random(-6, +6);

  // 軌跡の線を引く
  line(px, py, x, y);
}
