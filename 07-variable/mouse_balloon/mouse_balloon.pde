// だんだん膨らむ風船

// 風船の大きさを覚えておくための変数を宣言する
// 名前は ballSize とする
float ballSize;

void setup() {
  size(600, 600);
  
  strokeWeight(2);
  fill(255, 200, 100);

  // ballSize の初期値（最初の大きさ）を代入
  ballSize = 100;
}

void draw() {
  background(255, 255, 255);
  
  // 風船の大きさとして使うと決めた変数 ballSize にもとづき円を描く
  ellipse(300, 300, ballSize, ballSize);
}

// マウスボタンを押したときに実行されるブロック
void mousePressed() {
  // ballSize に ballSize + 10 を代入
  // この結果、 ballSize はクリックされるたびに 10 ずつ増えていく
  ballSize = ballSize + 10;
}
