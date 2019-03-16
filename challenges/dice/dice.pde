// サイコロ

void setup() {
  size(600, 600);
  noStroke();
  background(255);
}

void mousePressed() {
  background(255);

  // 乱数でサイコロの目を計算
  // 1 ~ 6.999... の切り捨てで 1 ~ 6 になる
  int r = floor(random(1, 7));

  // サイコロの目を描画
  if (r == 1) {
    fill(200, 0, 0);
    ellipse(width / 2, height / 2, 80, 80);
  }
  else if (r == 2) {
    fill(0);
    ellipse(width / 2 - 100, height / 2 + 100, 40, 40);
    ellipse(width / 2 + 100, height / 2 - 100, 40, 40);
  }
  else if (r == 3) {
    fill(0);
    ellipse(width / 2 - 100, height / 2 + 100, 40, 40);
    ellipse(width / 2,       height / 2,       40, 40);
    ellipse(width / 2 + 100, height / 2 - 100, 40, 40);
  }
  else if (r == 4) {
    fill(0);
    ellipse(width / 2 - 100, height / 2 - 100, 40, 40);
    ellipse(width / 2 - 100, height / 2 + 100, 40, 40);
    ellipse(width / 2 + 100, height / 2 - 100, 40, 40);
    ellipse(width / 2 + 100, height / 2 + 100, 40, 40);
  }
  else if (r == 5) {
    fill(0);
    ellipse(width / 2 - 100, height / 2 - 100, 40, 40);
    ellipse(width / 2 - 100, height / 2 + 100, 40, 40);
    ellipse(width / 2,       height / 2,       40, 40);
    ellipse(width / 2 + 100, height / 2 - 100, 40, 40);
    ellipse(width / 2 + 100, height / 2 + 100, 40, 40);
  }
  else {
    fill(0);
    ellipse(width / 2 - 100, height / 2 - 100, 40, 40);
    ellipse(width / 2 - 100, height / 2,       40, 40);
    ellipse(width / 2 - 100, height / 2 + 100, 40, 40);
    ellipse(width / 2 + 100, height / 2 - 100, 40, 40);
    ellipse(width / 2 + 100, height / 2,       40, 40);
    ellipse(width / 2 + 100, height / 2 + 100, 40, 40);
  }
}

void draw() {
}
