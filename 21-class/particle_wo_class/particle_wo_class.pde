// 可変長配列でパーティクル（ランダムウォーク）

// 粒子の情報を覚えておくための配列
FloatList xs;
FloatList ys;

void setup() {
  size(600, 600);
  noStroke();
  fill(255);

  // 可変長配列を初期化
  xs = new FloatList();
  ys = new FloatList();
}

void draw() {
  background(0);

  // 新たな粒子を追加
  xs.append(300);
  ys.append(300);

  // ループ変数 i を 0 から個数ぶんまで増やしていく
  // ＝すべての粒子について処理する
  for (int i = 0; i < xs.size(); i++) {
    // i番目の粒子の位置をずらす
    xs.add(i, random(-10, +10));
    ys.add(i, random(-10, +10));

    // i番目の粒子を描く
    ellipse(xs.get(i), ys.get(i), 10, 10);
  }
}
