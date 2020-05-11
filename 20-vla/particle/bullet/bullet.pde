// 可変長配列でパーティクル（寿命でフェード）

// エージェントの位置を覚えておくための配列
FloatList xs;
FloatList ys;
// 速度用の配列
FloatList vxs;
FloatList vys;

void setup() {
  size(600, 600);
  noStroke();

  // 可変長配列を初期化
  xs = new FloatList();
  ys = new FloatList();
  vxs = new FloatList();
  vys = new FloatList();
}

void draw() {
  background(0);

  // 経過時間から発射角度を計算
  float angle = frameCount * 0.1;
  xs.append(mouseX);
  ys.append(mouseY);
  vxs.append(cos(angle) * 2);
  vys.append(sin(angle) * 2);

  // ちょっとずらしてもうひとつ発射
  xs.append(mouseX);
  ys.append(mouseY);
  vxs.append(cos(angle - 0.4) * 2);
  vys.append(sin(angle - 0.4) * 2);

  // もうひとつ発射
  xs.append(mouseX);
  ys.append(mouseY);
  vxs.append(cos(angle + 0.4) * 2);
  vys.append(sin(angle + 0.4) * 2);

  // ループ変数 i を 0 から個数ぶんまで増やしていく
  // ＝すべてのエージェントについて処理する
  for (int i = 0; i < xs.size(); i++) {
    // i番目のエージェントの位置をずらす
    xs.add(i, vxs.get(i));
    ys.add(i, vys.get(i));

    fill(255, 0, 255);

    // i番目のエージェントを描く
    ellipse(xs.get(i), ys.get(i), 4, 4);
  }
  
  // 画面外に消えた粒子を削除する
  for (int i = xs.size() - 1; i >= 0; i--) {
    float px = xs.get(i);
    float py = ys.get(i);

    if (px < 0 || px > width || py < 0 || py > height) {
      xs.remove(i);
      ys.remove(i);
      vxs.remove(i);
      vys.remove(i);
    }
  }
}
