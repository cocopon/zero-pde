// frameCount にもとづき勝手に移動する円

void setup() {
  size(600, 600);
  
  strokeWeight(2);
  fill(255, 200, 100);
}

// 1秒間に約60回実行されるブロック
void draw() {
  background(255, 255, 255);
  
  // frameCount は1フレーム＝draw()が1回呼び出される毎に1ずつ増えるので、
  // 円の中心は少しずつ右に移動して見える
  ellipse(frameCount, 300, 50, 50);
}
