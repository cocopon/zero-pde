// 音量を可視化

// マイクの音を扱うためのライブラリをインポート
import processing.sound.*;

// マイク
AudioIn in;
// 音量を取得してくれるもの
Amplitude amp;

void setup() {
  size(600, 600);
  strokeWeight(2);
  fill(255, 200, 100);

  // マイクを初期化（おまじない。現時点で深い意味は考えなくてOK）
  in = new AudioIn(this);
  in.start();

  // 音量の取得を開始
  amp = new Amplitude(this);
  amp.input(in);
}

void draw() {
  background(255);

  // マイクの音量を取得して、
  // 結果を変数 a に入れる
  float a = amp.analyze();
  // 音量の数値をコンソールに出力してみる
  println(a);

  // 音量を円のサイズに反映して描く
  float sz = a * 1000;
  ellipse(
    width / 2, height / 2,
    sz, sz
  );
}
