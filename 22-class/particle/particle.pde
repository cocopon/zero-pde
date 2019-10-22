// クラスを使って、ランダムウォークする粒が湧き出す

// 粒を表現するクラス Particle を定義
class Particle {
  // 粒のもつデータ
  // 粒は x, y, vx, vy をもつ
  float x;
  float y;
  float vx;
  float vy;
  
  // 寿命
  float life;
  // サイズ
  float sz;
}

// Particle の可変長配列
ArrayList<Particle> ps;

void setup() {
  size(600, 600);
  fill(0);
  noStroke();

  // 配列を初期化（可変長なので配列の個数は指定しなくてよい）
  ps = new ArrayList<Particle>();
}

void draw() {
  background(255);
  
  // 自然に湧き出す
  Particle p = new Particle();
  p.x = 300;
  p.y = 300;
  p.vx = 0;
  p.vy = 0;
  p.life = 1;
  p.sz = random(1, 10);
  ps.add(p);
  
  for (int i = 0; i < ps.size(); i++) {
    // i 番目の粒を取得
    Particle pi = ps.get(i);
    
    // i 番目の粒を動かす
    pi.x += pi.vx;
    pi.y += pi.vy;
    
    pi.vx += random(-0.1, +0.1);
    pi.vy += random(-0.1, +0.1);
    
    // 寿命を減らす
    pi.life -= 0.005;
    
    float al = map(pi.life, 1, 0, 255, 0);
    fill(0, al);
    ellipse(pi.x, pi.y, pi.sz, pi.sz);
  }

  // 不要になった＝寿命の尽きた粒を削除
  for (int i = ps.size() - 1; i >= 0; i--) {
    Particle pi = ps.get(i);
    if (pi.life <= 0) {
      ps.remove(i);
    }
  }
}
