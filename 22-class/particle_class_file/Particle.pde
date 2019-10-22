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

  // 粒を動かす
  void update() {
    this.x += this.vx;
    this.y += this.vy;
      
    this.vx += random(-0.1, +0.1);
    this.vy += random(-0.1, +0.1);
      
    // 寿命を減らす
    this.life -= 0.005;
  }
  
  void render() {
    float al = map(this.life, 1, 0, 255, 0);
    fill(0, al);
    ellipse(this.x, this.y, this.sz, this.sz);
  }
}
