// 可変長配列でパーティクル（寿命でフェード）

// エージェントの位置を覚えておくための配列
FloatList xs;
FloatList ys;
// 速度用の配列
FloatList vxs;
FloatList vys;
// 寿命の配列
FloatList lifes;

void setup() {
  size(600, 600);
  noStroke();

  // 可変長配列を初期化
  xs = new FloatList();
  ys = new FloatList();
  vxs = new FloatList();
  vys = new FloatList();
  lifes = new FloatList();
}

void draw() {
  background(255);

  // 新たなエージェントを追加
  xs.append(mouseX);
  ys.append(mouseY);
  // 速度もランダムに設定
  vxs.append(random(-5, 5));
  vys.append(random(-5, 5));
  // 寿命を設定
  lifes.append(1);

  // ループ変数 i を 0 から個数ぶんまで増やしていく
  // ＝すべてのエージェントについて処理する
  for (int i = 0; i < xs.size(); i++) {
    // i番目のエージェントに重力を加える
    vys.add(i, 0.2);

    // i番目のエージェントの位置をずらす
    xs.add(i, vxs.get(i));
    ys.add(i, vys.get(i));

    // i番目のエージェントの寿命を減らす
    lifes.sub(i, 0.05);

    // 寿命を塗りの不透明度に反映する
    // 寿命 lifes.get(i) が 1 ~ 0 で変化するとき、
    // 透明度 al を 255 ~ 0 まで変化させる
    float al = map(
      lifes.get(i),
      1, 0,
      255, 0
    );
    fill(0, 0, 0, al);

    // i番目のエージェントを描く
    ellipse(xs.get(i), ys.get(i), 10, 10);
  }
}
