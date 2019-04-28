// 可変長配列でエージェント100体のランダムウォーク

// エージェントの位置を覚えておくための配列
FloatList x;
FloatList y;

void setup() {
  size(600, 600);
  noStroke();
  fill(0);

  // 可変長配列を初期化
  x = new FloatList();
  y = new FloatList();

  // エージェントの初期位置を設定
  for (int i = 0; i < 100; i++) {
    x.append(width / 2);
    y.append(height / 2);
  }
}

void draw() {
  background(255);

  for (int i = 0; i < 100; i++) {
    // i番目のエージェントの位置をずらす
    x.add(i, random(-5, 5));
    y.add(i, random(-5, 5));

    // i番目のエージェントを描く
    ellipse(x.get(i), y.get(i), 10, 10);
  }
}
