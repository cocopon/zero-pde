// 揺らぎペン：ランダムとペンツールを組み合わせる例

void setup() {
  size(600, 600);
  background(255, 255, 255);
}

// マウスをドラッグしたときに実行されるブロック
void mouseDragged() {
  // 線の幅をランダムに
  strokeWeight(random(1, 20));
  // 線の不透明度もランダムに
  stroke(0, 0, 0, random(100, 255));

  // 線を引く
  line(pmouseX, pmouseY, mouseX, mouseY);
}

void draw() {
}
