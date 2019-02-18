// バラの花びらのような帯を描けるペン 

void setup() {
  size(600, 600);
  background(0, 0, 0);
}

void mouseDragged() {
  noStroke();
  // カーソル位置を色に反映
  // （そのままの座標では数値が大きくなりすぎるので割り算で小さくする）
  fill(255, mouseY / 2, mouseX / 2, 30);
  
  // キャンバス中央と少し前のカーソル位置、現在のカーソル位置で三角形を描く
  triangle(
    300, 300,
    pmouseX, pmouseY,
    mouseX, mouseY
  );
}

void draw() {
}
