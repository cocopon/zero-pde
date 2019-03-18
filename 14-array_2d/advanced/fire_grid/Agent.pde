class Agent {
  PVector pos;
  PVector vel;
  float freq;
  float amp;

  Agent() {
    pos = new PVector();
    vel = new PVector();
    this.reset();
  }

  void reset() {
    this.pos.x = random(0.4, 0.6) * width;
    this.pos.y = 0.9 * height;
    this.vel.x = 0;
    this.vel.y = 0;
    this.freq = random(-0.1, 0.1);
    this.amp = random(1.5);
  }

  void update() {
    if (this.pos.y < -height * 2.5) {
      this.reset();
    }

    // 水平方向の揺らぎ
    this.vel.x += sin(frameCount * this.freq) * this.amp;
    // 上昇気流
    this.vel.y -= 0.1;

    // 速度を位置に反映
    this.pos.add(this.vel);

    // 横方向、画面中央に戻す力をかける
    this.pos.x += (width / 2 - this.pos.x) * 0.02;
  }
}
