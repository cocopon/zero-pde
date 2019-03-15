// 最後にクリックした地点から現在のカーソル位置まで線を引く

// クリックした位置を覚えておくための変数を宣言
int px;
int py;

void setup() {
  size(600, 600);
  stroke(0);
  fill(0);
}

// マウスを押したとき実行されるブロック
void mousePressed() {
  // カーソル位置を変数に代入
  // （この時点での座標がコピーされる。このあとカーソル位置が変わっても連動しない）
  px = mouseX;
  py = mouseY;
}

void draw() {
  background(255);

  // クリック位置に円を描く
  ellipse(px, py, 10, 10);

  // クリックした位置から現在のカーソル位置まで線を描く
  line(px, py, mouseX, mouseY);
}
