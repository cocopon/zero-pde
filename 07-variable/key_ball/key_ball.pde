// 方向キーで操作できるボール

// ボールの位置を覚えておくための変数を用意する
float ballX;
float ballY;

void setup() {
  size(600, 600);
  
  strokeWeight(2);
  fill(100, 200, 255);

  // それぞれに 300 を代入して初期化
  ballX = 600 / 2;
  ballY = 600 / 2;
}

void draw() {
  background(255, 255, 255);
  
  // ボールの位置として使っている変数 ballX, ballY を中心に円を描く
  ellipse(ballX, ballY, 50, 50);
}

// キーを押したときに実行されるブロック
void keyPressed() {
  // もし押されたキーが左矢印（ LEFT ）のとき
  if (keyCode == LEFT) {
    // ボールの位置として使っている変数 ballX を 10 減らす
    ballX = ballX - 10;
  }
  // もし押されたキーが右矢印（ RIGHT ）のとき
  else if (keyCode == RIGHT) {
    // ボールの位置として使っている変数 ballX を 10 増やす
    ballX = ballX + 10;
  }
  // もし押されたキーが上矢印（ UP ）のとき
  else if (keyCode == UP) {
    // ボールの位置として使っている変数 ballY を 10 減らす
    ballY = ballY - 10;
  }
  // もし押されたキーが下矢印（ DOWN ）のとき
  else if (keyCode == DOWN) {
    // ボールの位置として使っている変数 ballY を 10 増やす
    ballY = ballY + 10;
  }
}
