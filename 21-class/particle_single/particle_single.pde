// クラスを使って1粒をランダムウォーク


// 粒を表現するクラス Particle を定義
class Particle {
  // 粒のもつデータ
  // 粒は x, y, vx, vy をもつ
  float x;
  float y;
  float vx;
  float vy;
}

// Particle という型で p を宣言
Particle p;

void setup() {
  size(600, 600);

  // インスタンス（実体）を生成
  p = new Particle();

  // インスタンスのデータに代入（変数と同じように利用できる）
  p.x = 300;
  p.y = 300;
  p.vx = 0;
  p.vy = 0;
}

void draw() {
  background(255);
  fill(0);

  // インスタンスのデータに代入（変数と同じように利用できる）
  p.x += p.vx;
  p.y += p.vy;
  p.vx += random(-0.1, +0.1);
  p.vy += random(-0.1, +0.1);

  // インスタンスのデータを参照（変数と同じように利用できる）
  ellipse(p.x, p.y, 10, 10);
}
