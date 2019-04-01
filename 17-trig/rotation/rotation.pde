// 角度を増やしてぐるぐる回す

// 角度
float angle;

void setup() {
  size(600, 600);
  fill(0);

  angle = 0;
}

void draw() {
  background(255);

  // 角度を少しずつ増やす
  angle += 0.05;

  // キャンバスの中心座標
  float cx = width / 2;
  float cy = height / 2;

  // cos(), sin() で角度に対するX座標とY座標を計算
  // 線を描く
  line(
    cx, cy,
    cx + cos(angle) * 150,
    cy + sin(angle) * 150
  );
  // 円を描く
  ellipse(
    cx + cos(angle) * 150,
    cy + sin(angle) * 150,
    20, 20
  );
}
