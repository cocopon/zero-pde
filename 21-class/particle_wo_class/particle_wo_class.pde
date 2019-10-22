// 可変長配列でパーティクル（ランダムウォーク）

// 粒子の情報を覚えておくための配列
FloatList x;
FloatList y;

void setup() {
  size(600, 600);
  noStroke();
  fill(255);

  // 可変長配列を初期化
  x = new FloatList();
  y = new FloatList();
}

void draw() {
  background(0);

  // 新たな粒子を追加
  x.append(300);
  y.append(300);

  // ループ変数 i を 0 から個数ぶんまで増やしていく
  // ＝すべての粒子について処理する
  for (int i = 0; i < x.size(); i++) {
    // i番目の粒子の位置をずらす
    x.add(i, random(-10, +10));
    y.add(i, random(-10, +10));

    // i番目の粒子を描く
    ellipse(x.get(i), y.get(i), 10, 10);
  }
}
