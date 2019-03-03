// 色パレットの例（おまけ）

void setup() {
  size(600, 600);
  background(0);

  // 色空間はHSB
  colorMode(HSB, 360, 100, 100);

  noStroke();
  stroke(0);
  strokeWeight(2);

  // 2重のfor文でグリッドを描く
  for (int iy = 0; iy < 30; iy++) {
    for (int ix = 0; ix < 30; ix++) {
      float rnd = random(100);
      float h;
      if (rnd < 33) {
        h = 10;
      } else if (rnd <66) {
        h = 50;
      } else {
        h = 200;
      }
      float s = 80;
      float b = random(100);
      fill(h, s, b);

      rect(
        ix * 20, iy * 20,
        20, 20,
        6
      );
    }
  }
}

void draw() {
}
