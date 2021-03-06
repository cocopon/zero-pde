// 点同士を線で結ぶ、よく見かけるアレ（多層）

// 点の数
int count = 100;

void setup() {
  size(600, 600);

  background(0);
  drawNetwork(16);
  drawNetwork(64);
  drawNetwork(255);
}

// 指定した濃さでネットワークを描く
void drawNetwork(float gray) {
  // 点の位置
  float nxs[] = new float[count];
  float nys[] = new float[count];

  // 点をランダムに配置
  for (int i = 0; i < count; i++) {
    nxs[i] = random(-100, width + 100);
    nys[i] = random(-100, height + 100);
  }

  // 線を描画
  stroke(gray);
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
  fill(gray);
  noStroke();
  for (int i = 0; i < count; i++) {
    ellipse(nxs[i], nys[i], 8, 8);
  }
}

void mousePressed() {
  background(0);
  drawNetwork(16);
  drawNetwork(64);
  drawNetwork(255);
}

void draw() {
}
