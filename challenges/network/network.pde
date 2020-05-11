// 点同士を線で結ぶ、よく見かけるアレ

// 点の数
int count = 100;
// 点の位置
float nxs[];
float nys[];

void setup() {
  size(600, 600);

  nxs = new float[count];
  nys = new float[count];

  // 点をランダムに配置
  for (int i = 0; i < count; i++) {
    nxs[i] = random(-100, width + 100);
    nys[i] = random(-100, height + 100);
  }
}

void draw() {
  background(0);

  // 線を描画
  stroke(255);
  noFill();
  // 点のインデックスを全通り組み合わせられる2重for文
  // （動作を考えてみよう）
  for (int j = 0; j < count; j++) {
    for (int i = j + 1; i < count; i++) {
      // 点間の距離を計算し、ある程度遠いものは描かない
      float d = dist(
        nxs[j], nys[j],
        nxs[i], nys[i]
      );

      if (d < 100) {
        line(
          nxs[j], nys[j],
          nxs[i], nys[i]
        );
      }
    }
  }

  // 点を描画
  fill(255);
  noStroke();
  for (int i = 0; i < count; i++) {
    ellipse(nxs[i], nys[i], 8, 8);
  }
}
