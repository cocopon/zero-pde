// 可変長配列でパーティクル（寿命でフェード）

// エージェントの位置を覚えておくための配列
FloatList x;
FloatList y;
// 速度用の配列
FloatList vx;
FloatList vy;
// 寿命の配列
FloatList life;

void setup() {
  size(600, 600);
  noStroke();

  // 可変長配列を初期化
  x = new FloatList();
  y = new FloatList();
  vx = new FloatList();
  vy = new FloatList();
  life = new FloatList();
}

void draw() {
  background(255);

  // 新たなエージェントを追加
  x.append(mouseX);
  y.append(mouseY);
  // 速度もランダムに設定
  vx.append(random(-5, 5));
  vy.append(random(-5, 5));
  // 寿命を設定
  life.append(1);

  // ループ変数 i を 0 から個数ぶんまで増やしていく
  // ＝すべてのエージェントについて処理する
  for (int i = 0; i < x.size(); i++) {
    // i番目のエージェントに重力を加える
    vy.add(i, 0.2);

    // i番目のエージェントの位置をずらす
    x.add(i, vx.get(i));
    y.add(i, vy.get(i));

    // i番目のエージェントの寿命を減らす
    life.sub(i, 0.05);

    // 寿命を塗りの不透明度に反映する
    // 寿命 life.get(i) が 1 ~ 0 で変化するとき、
    // 透明度 al を 255 ~ 0 まで変化させる
    float al = map(
      life.get(i),
      1, 0,
      255, 0
    );
    fill(0, 0, 0, al);

    // i番目のエージェントを描く
    ellipse(x.get(i), y.get(i), 10, 10);
  }
}