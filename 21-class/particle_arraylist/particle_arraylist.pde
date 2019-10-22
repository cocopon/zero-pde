// クラスを使って、ランダムウォークする粒が湧き出す

// 粒を表現するクラス Particle を定義
class Particle {
  // 粒のもつデータ
  // 粒は x, y, vx, vy をもつ
  float x;
  float y;
  float vx;
  float vy;
}

// Particle の可変長配列
ArrayList<Particle> ps;

void setup() {
  size(600, 600);
  fill(0);

  // 配列を初期化（可変長なので配列の個数は指定しなくてよい）
  ps = new ArrayList<Particle>();

  for (int i = 0; i < 100; i++) {
    // 粒の実体を生成
    Particle p = new Particle();

    // 粒のデータを初期化
    p.x = 300;
    p.y = 300;
    p.vx = 0;
    p.vy = 0;
    
    // 生成・初期化した粒を可変長配列に追加
    ps.add(p);
  }
}

void draw() {
  background(255);
  
  // 自然に湧き出す
  Particle p = new Particle();
  p.x = 300;
  p.y = 300;
  p.vx = 0;
  p.vy = 0;
  ps.add(p);
  
  for (int i = 0; i < ps.size(); i++) {
    // i 番目の粒を取得
    Particle pi = ps.get(i);
    
    // i 番目の粒を動かす
    pi.x += pi.vx;
    pi.y += pi.vy;
    
    pi.vx += random(-0.1, +0.1);
    pi.vy += random(-0.1, +0.1);
    
    ellipse(pi.x, pi.y, 10, 10);
  }
}
