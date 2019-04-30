// 可変長配列でパーティクル（画像で粒子を表現）

// エージェントの位置を覚えておくための配列
FloatList x;
FloatList y;
// 速度用の配列
FloatList vx;
FloatList vy;
// 寿命の配列
FloatList life;
// 粒子の画像
PImage img;

void setup() {
  size(600, 600);
  noStroke();
  
  // 画像を描くときの基準位置を中央に
  imageMode(CENTER);

  img = loadImage("bokeh.png");

  // 可変長配列を初期化
  x = new FloatList();
  y = new FloatList();
  vx = new FloatList();
  vy = new FloatList();
  life = new FloatList();
}

void draw() {
  background(0);

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

    // 寿命を粒子の不透明度に反映する
    // 画像の透明度は tint() で変更できる
    float al = map(
      life.get(i),
      1, 0,
      255, 0
    );
    tint(255, 255, 255, al);

    // i番目のエージェントを描く
    image(img, x.get(i), y.get(i));
  }

  // 不要になった＝寿命の尽きた粒を削除
  for (int i = x.size() - 1; i >= 0; i--) {
    if (life.get(i) <= 0) {
      x.remove(i);
      y.remove(i);
      vx.remove(i);
      vy.remove(i);
      life.remove(i);
    }
  }
}
