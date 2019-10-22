// 可変長配列でパーティクル（重力あり）

// 粒子の情報を覚えておくための配列
FloatList x;
FloatList y;
FloatList vx;
FloatList vy;

void setup() {
  size(600, 600);
  noStroke();
  fill(255);

  // 可変長配列を初期化
  x = new FloatList();
  y = new FloatList();
  vx = new FloatList();
  vy = new FloatList();
}

void draw() {
  background(0);

  // 新たな粒子を追加
  x.append(300);
  y.append(300);
  vx.append(random(-5, 5));
  vy.append(random(-5, 5));

  // ループ変数 i を 0 から個数ぶんまで増やしていく
  // ＝すべての粒子について処理する
  for (int i = 0; i < x.size(); i++) {
    // i番目の粒子の位置をずらす
    x.add(i, vx.get(i));
    y.add(i, vy.get(i));
    
    // Y方向の速度に重力をかける
    vy.add(i, 0.1);

    // i番目の粒子を描く
    ellipse(x.get(i), y.get(i), 10, 10);
  }
}
