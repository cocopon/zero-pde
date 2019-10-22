// クラスを使って100粒をランダムウォーク

// 粒を表現するクラス Particle を定義
class Particle {
  // 粒のもつデータ
  // 粒は x, y, vx, vy をもつ
  float x;
  float y;
  float vx;
  float vy;
}

// Particle の配列
Particle[] ps;

void setup() {
  size(600, 600);
  fill(0);

  // 配列を初期化
  ps = new Particle[100];

  for (int i = 0; i < 100; i++) {
    // i 番目の粒の実体を生成
    ps[i] = new Particle();

    // i 番目の粒のデータを初期化
    ps[i].x = 300;
    ps[i].y = 300;
    ps[i].vx = 0;
    ps[i].vy = 0;
  }
}

void draw() {
  background(255);
  
  for (int i = 0; i < 100; i++) {
    // i 番目の粒を動かす
    ps[i].x += ps[i].vx;
    ps[i].y += ps[i].vy;
    
    ps[i].vx += random(-0.1, +0.1);
    ps[i].vy += random(-0.1, +0.1);
    
    ellipse(ps[i].x, ps[i].y, 10, 10);
  }
}
