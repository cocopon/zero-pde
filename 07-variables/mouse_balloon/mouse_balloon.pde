// だんだん膨らむ風船

// 風船の大きさを覚えておくための変数を宣言する
// 名前は bsize とする
float bsize;

void setup() {
  size(600, 600);
  
  strokeWeight(2);
  fill(255, 200, 100);

  // bsize の初期値（最初の大きさ）を代入
  bsize = 100;
}

void draw() {
  background(255, 255, 255);
  
  // 風船の大きさとして使うと決めた変数 bsize にもとづき円を描く
  ellipse(300, 300, bsize, bsize);
}

// マウスボタンを押したときに実行されるブロック
void mousePressed() {
  // bsize に bsize + 10 を代入
  // この結果、 bsize はクリックされるたびに 10 ずつ増えていく
  bsize = bsize + 10;
}
