// 角度を増やしてぐるぐるうずまき

// 角度
float angle;

void setup() {
  size(600, 600);

  background(255);
  fill(0);
  noStroke();

  angle = 0;
}

void draw() {

  // 角度を少しずつ増やす
  angle += 0.05;

  // キャンバスの中心座標
  float cx = width / 2;
  float cy = height / 2;

  // 角度の増加に応じて、中心からの長さも増やす
  float len = angle * 10;

  // cos(), sin() で角度に対するX座標とY座標を計算
  // 円を描く
  ellipse(
    cx + cos(angle) * len,
    cy + sin(angle) * len,
    10, 10
  );
}
