// ブレンドモードの例（加算：光の混色）

void setup() {
  size(600, 600);

  // 加算モードにする
  blendMode(ADD);

  background(0, 0, 0);
  noStroke();

  // 適当に図形を重ねて描く
  fill(255, 0, 0);
  rect(150, 150, 200, 200);

  fill(0, 0, 255);
  ellipse(300, 300, 200, 200);

  fill(0, 255, 0);
  rect(250, 250, 200, 200);
}
