// 可変長配列でパーティクル（画像で粒子を表現）

// エージェントの位置を覚えておくための配列
FloatList xs;
FloatList ys;
// 速度用の配列
FloatList vxs;
FloatList vys;
// 寿命の配列
FloatList lifes;
// 粒子の画像
PImage img;

void setup() {
  size(600, 600);
  noStroke();
  
  // 画像を描くときの基準位置を中央に
  imageMode(CENTER);

  img = loadImage("bokeh.png");

  // 可変長配列を初期化
  xs = new FloatList();
  ys = new FloatList();
  vxs = new FloatList();
  vys = new FloatList();
  lifes = new FloatList();
}

void draw() {
  background(0);

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

    // 寿命を粒子の不透明度に反映する
    // 画像の透明度は tint() で変更できる
    float al = map(
      lifes.get(i),
      1, 0,
      255, 0
    );
    tint(255, 255, 255, al);

    // i番目のエージェントを描く
    image(img, xs.get(i), ys.get(i));
  }

  // 不要になった＝寿命の尽きた粒を削除
  for (int i = xs.size() - 1; i >= 0; i--) {
    if (lifes.get(i) <= 0) {
      xs.remove(i);
      ys.remove(i);
      vxs.remove(i);
      vys.remove(i);
      lifes.remove(i);
    }
  }
}
