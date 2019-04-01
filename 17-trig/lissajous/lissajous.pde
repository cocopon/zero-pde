float angle;

void setup() {
  size(600, 600);
  noStroke();
  fill(150, 255, 150);

  background(60, 100, 140);

  angle = 0;
}

void draw() {
  angle += 0.01;

  // キャンバスの中心座標
  float cx = width / 2;
  float cy = height / 2;

  // 角度に掛け算する数値（ここを変えると模様も変わる）
  int a = 7;
  int b = 3;
  ellipse(
    cx + cos(angle * a) * 150,
    cy + sin(angle * b) * 150,
    2, 2
  );
}
