// 関数理解用
// 関数で塗り色を調合して戻す（戻り値）
// 中段は色を枠線に適用している

// いい感じに色を調合して戻す関数
color createNiceColor() {
  // かぼちゃのような色を生成する

  colorMode(HSB);

  float h = random(0, 100);
  float s = map(
    sin(map(h, 0, 100, 0, 2 * PI)),
    -1, +1,
    0, 255
  );
  float b = s;
  color col = color(h, s, b);

  // return で戻り値を返す
  return col;
}

void setup() {
  size(600, 600);
  noStroke();
  background(0);

  // rect() の座標の扱いを ellipse() と同じように変更する
  rectMode(CENTER);

  // 関数の戻り値を受け取る変数
  color col;

  // 上段左の図形
  // 関数を呼び出して結果を取得
  col = createNiceColor();
  // 関数の戻り値を塗り色に設定
  fill(col);
  ellipse(
    width / 4,
    height / 4,
    100, 100
  );

  // 上段中央の図形
  col = createNiceColor();
  fill(col);
  rect(
    width / 2,
    height / 4,
    100, 100
  );

  // 上段右上の図形
  col = createNiceColor();
  fill(col);
  arc(
    width * 3 / 4 - 100 / 2,
    height / 4 + 100 / 2,
    100 * 2, 100 * 2,
    -PI / 2,
    0,
    PIE
  );

  strokeWeight(2);
  noFill();

  // 中段左の図形
  // 関数を呼び出して結果を取得
  col = createNiceColor();
  // 関数の戻り値を線の色に設定
  stroke(col);
  rect(
    width / 4,
    height / 2,
    100, 100,
    25
  );

  // 中段右の図形
  // 関数を呼び出して結果を取得
  col = createNiceColor();
  // 関数の戻り値を線の色に設定
  stroke(col);
  ellipse(
    width * 3 / 4,
    height / 2,
    100, 100
  );

  noStroke();

  // 下段左の図形
  col = createNiceColor();
  fill(col);
  arc(
    width / 4 + 100 / 2,
    height * 3 / 4 + 100 / 2,
    100 * 2, 100 * 2,
    PI, PI * 3 / 2,
    PIE
  );

  // 下段中央の図形
  col = createNiceColor();
  fill(col);
  ellipse(
    width / 2,
    height * 3 / 4,
    100, 100
  );

  // 下段右の図形
  col = createNiceColor();
  fill(col);
  rect(
    width * 3 / 4,
    height * 3 / 4,
    100, 100
  );
}

void draw() {
}

