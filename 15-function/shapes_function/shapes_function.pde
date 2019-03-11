// 関数理解用
// 関数で塗り色を決める

// 塗り色を決める独自の関数
void applyMyFillColor() {
  // かぼちゃのような色を生成する

  colorMode(HSB);

  float h = random(0, 100);
  float s = map(
    sin(map(h, 0, 100, 0, 2 * PI)),
    -1, +1,
    0, 255
  );
  float b = s;
  fill(h, s, b);
}

void setup() {
  size(600, 600);
  noStroke();
  background(0);

  // rect() の座標の扱いを ellipse() と同じように変更する
  rectMode(CENTER);

  // 上段左の図形
  applyMyFillColor();
  ellipse(
    width / 4,
    height / 4,
    100, 100
  );

  // 上段中央の図形
  applyMyFillColor();
  rect(
    width / 2,
    height / 4,
    100, 100
  );

  // 上段右上の図形
  applyMyFillColor();
  arc(
    width * 3 / 4 - 100 / 2,
    height / 4 + 100 / 2,
    100 * 2, 100 * 2,
    -PI / 2,
    0,
    PIE
  );

  // 中段左の図形
  applyMyFillColor();
  rect(
    width / 4,
    height / 2,
    100, 100,
    25
  );

  // 中段右の図形
  applyMyFillColor();
  ellipse(
    width * 3 / 4,
    height / 2,
    100, 100
  );

  // 下段左の図形
  applyMyFillColor();
  arc(
    width / 4 + 100 / 2,
    height * 3 / 4 + 100 / 2,
    100 * 2, 100 * 2,
    PI, PI * 3 / 2,
    PIE
  );

  // 下段中央の図形
  applyMyFillColor();
  ellipse(
    width / 2,
    height * 3 / 4,
    100, 100
  );

  // 下段右の図形
  applyMyFillColor();
  rect(
    width * 3 / 4,
    height * 3 / 4,
    100, 100
  );
}

void draw() {
}
