// 可変長配列でエージェント100体のランダムウォーク

// エージェントの位置を覚えておくための配列
FloatList xs;
FloatList ys;

void setup() {
  size(600, 600);
  noStroke();
  fill(0);

  // 可変長配列を初期化
  xs = new FloatList();
  ys = new FloatList();

  // エージェントの初期位置を設定
  for (int i = 0; i < 100; i++) {
    xs.append(width / 2);
    ys.append(height / 2);
  }
}

void draw() {
  background(255);

  for (int i = 0; i < 100; i++) {
    // i番目のエージェントの位置をずらす
    xs.add(i, random(-5, 5));
    ys.add(i, random(-5, 5));

    // i番目のエージェントを描く
    ellipse(xs.get(i), ys.get(i), 10, 10);
  }
}
