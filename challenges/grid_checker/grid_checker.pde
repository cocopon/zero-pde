// 規則的に整列（2次元、市松模様）

void setup() {
  size(600, 600);
  noStroke();
}

void draw() {
  background(200);

  // ループ変数は座標ではなく、1ずつ増やす
  // （色の判定を簡単にするため。座標はあとで算出する）
  for (int iy = 0; iy <= 10; iy++) {
    for (int ix = 0; ix <= 10; ix++) {
      // ix + iy が偶数なら黒色、それ以外は白色
      if ((ix + iy) % 2 == 0) {
        fill(0);
      }
      else {
        fill(255);
      }

      // セルを描く（座標はループ変数から計算する）
      ellipse(ix * 60, iy * 60, 20, 20);
    }
  }
}
