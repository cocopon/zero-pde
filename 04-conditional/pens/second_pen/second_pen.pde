// 秒数によって色が変わるペン

void setup() {
  size(600, 600);
  background(255, 255, 255);

  noStroke();
}

void mouseDragged() {
  // もし秒数を3で割った余りが0なら
  // 例：0, 3, 6, 9, ...
  if (second() % 3 == 0) {
    // 塗りを黒色に
    fill(0, 0, 0);
  }
  // もしそれ以外で、秒数を3で割った余りが1なら
  // 例：1, 4, 7, 10, ...
  else if (second() % 3 == 1) {
    // 塗りを赤色に
    fill(255, 0, 0);
  }
  // もしそれ以外なら
  else {
    // 塗りを青色に
    fill(0, 0, 255);
  }

  // 円を描く
  ellipse(mouseX, mouseY, 20, 20);
}

void draw() {
}
