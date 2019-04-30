// 可変長配列でパーティクル（寿命でフェード）

// エージェントの位置を覚えておくための配列
FloatList x;
FloatList y;
// 速度用の配列
FloatList vx;
FloatList vy;

void setup() {
  size(600, 600);
  noStroke();

  // 可変長配列を初期化
  x = new FloatList();
  y = new FloatList();
  vx = new FloatList();
  vy = new FloatList();
}

void draw() {
  background(0);

  // 経過時間から発射角度を計算
  float angle = frameCount * 0.1;
  x.append(mouseX);
  y.append(mouseY);
  vx.append(cos(angle) * 2);
  vy.append(sin(angle) * 2);

  // ちょっとずらしてもうひとつ発射
  x.append(mouseX);
  y.append(mouseY);
  vx.append(cos(angle - 0.4) * 2);
  vy.append(sin(angle - 0.4) * 2);

  // もうひとつ発射
  x.append(mouseX);
  y.append(mouseY);
  vx.append(cos(angle + 0.4) * 2);
  vy.append(sin(angle + 0.4) * 2);

  // ループ変数 i を 0 から個数ぶんまで増やしていく
  // ＝すべてのエージェントについて処理する
  for (int i = 0; i < x.size(); i++) {
    // i番目のエージェントの位置をずらす
    x.add(i, vx.get(i));
    y.add(i, vy.get(i));

    fill(255, 0, 255);

    // i番目のエージェントを描く
    ellipse(x.get(i), y.get(i), 4, 4);
  }
  
  // 画面外に消えた粒子を削除する
  for (int i = x.size() - 1; i >= 0; i--) {
    float px = x.get(i);
    float py = y.get(i);

    if (px < 0 || px > width || py < 0 || py > height) {
      x.remove(i);
      y.remove(i);
      vx.remove(i);
      vy.remove(i);
    }
  }
}
