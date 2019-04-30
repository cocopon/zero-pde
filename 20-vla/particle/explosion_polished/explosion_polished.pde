// 可変長配列でパーティクル（爆発を再現、もう少し表現を磨いてみる）

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
  blendMode(ADD);
  colorMode(HSB, 360, 100, 100);
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

  // ループ変数 i を 0 から個数ぶんまで増やしていく
  // ＝すべてのエージェントについて処理する
  for (int i = 0; i < x.size(); i++) {
    vx.mult(i, 0.90);
    vy.mult(i, 0.90);

    float lf = life.get(i);

    // i番目のエージェントに重力を加える（はじめは重く、後半は煙になるので浮く）
    vy.add(i, map(lf, 1, 0, 0.1, -0.1));

    // i番目のエージェントの位置をずらす
    x.add(i, vx.get(i));
    y.add(i, vy.get(i));

    // i番目のエージェントの寿命を減らす
    life.sub(i, 0.01);

    // 彩度
    float s;
    if (lf >= 0.5) {
      s = map(lf, 1, 0.5, 255, 0);
    } else {
      s = 0;
    }

    // 不透明度
    float al;
    if (lf >= 0.5) {
      al = map(lf, 1, 0.5, 255, 50);
    } else {
      al = map(lf, 0.5, 0, 50, 0);
    }

    // 画像に被せる色を設定
    tint(
      map(lf, 1, 0, 30, 0), 
      s, 
      100, 
      al
    );

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

void mousePressed() {
  // 新たなエージェントをたくさん追加
  for (int j = 0; j < 5; j++) {
    // 大まかな方向を決定、塊感を出す
    float ja = random(2 * PI);

    for (int i = 0; i < 20; i++) {
      x.append(mouseX);
      y.append(mouseY);
      // 速度もランダムに設定
      // 三角関数を使うことで、XY個別ランダムで生じる速度の不均一さをなくす
      float ra = ja + random(-0.3, +0.3);
      float rl = random(2, 30);
      vx.append(cos(ra) * rl);
      vy.append(sin(ra) * rl * 0.5);
      // 寿命を設定
      life.append(random(0.9, 1));
    }
  }
}
