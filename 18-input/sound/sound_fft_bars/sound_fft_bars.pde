// 音の（高低）周波数成分を可視化（フタつき）

// マイクの音を扱うためのライブラリをインポート
import processing.sound.*;

// マイク
AudioIn in;
// 周波数を解析してくれるもの
FFT fft;

// 解析する周波数帯域の数
int COUNT = 64;
// 周波数成分の解析結果を入れる変数
float[] spectrum = new float[COUNT];
float[] bars = new float[COUNT];

void setup() {
  size(600, 600);
  noStroke();

  // マイクを初期化（おまじない。現時点で深い意味は考えなくてOK）
  in = new AudioIn(this);
  in.start();

  // 周波数解析を開始
  fft = new FFT(this, COUNT);
  fft.input(in);
}

void draw() {
  background(255);

  // マイクの音の周波数を解析して、
  // 結果を変数 spectrum に入れる
  fft.analyze(spectrum);
  // spectrum[0], [1], ... に数値が入る
  // spectrrm[0] が低い（周波数が小さい）音の成分、
  // 配列の数字が増えるほど高い（周波数が大きい）音の成分

  float cy = height / 2;

  for (int i = 0; i < COUNT; i++) {
    float dy = spectrum[i] * 1000;
    fill(0);
    rect(
      i * 10, cy,
      10, -dy
    );

    bars[i] -= 1;
    if (bars[i] < dy) {
      bars[i] = dy;
    }

    fill(255, 0, 0);
    rect(
      i * 10,
      cy - bars[i] - 4,
      10, 4
    );
  }
}
