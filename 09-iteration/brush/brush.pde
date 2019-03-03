// while文で飛沫ブラシ

void setup() {
  size(600, 600);
  background(255);
}

void mouseDragged() {
  // while文で10回繰り返す
  int i = 0;
  while (i < 10) {
    // 円のサイズをランダムで決める
    float sz = random(10);

    // 塗りの不透明度もランダムで決める
    fill(0, 0, 0, random(100));
    noStroke();

    // ランダムにずれた位置に円を描く
    ellipse(
      mouseX + random(-20, 20),
      mouseY + random(-20, 20),
      sz, sz
    );

    // ループ変数を 1 増やして繰り返す
    i = i + 1;
  }
}

void draw() {
}
